require 'securerandom'

module OneSignal
  # Helpers for common OneSignal API usage patterns.
  module Helpers
    CreateNotificationWithRetryResult = Struct.new(:response, :was_replayed)

    RETRYABLE_CODES = [429, 503].freeze
    MIN_BASE_DELAY = 1.0
    MAX_BASE_DELAY = 60.0

    # Create a notification with safe, idempotent retries.
    #
    # Ensures +notification.idempotency_key+ is set (generating a UUIDv4 when
    # absent) so the server can deduplicate, then calls +create_notification+.
    # Transient failures (HTTP 429, HTTP 503, or connection-level errors) are
    # retried up to +max_retries+ times with the SAME idempotency key,
    # honoring the +Retry-After+ response header when present and falling back
    # to exponential backoff (+base_delay * 2**attempt+ seconds) otherwise.
    # Other errors are raised immediately.
    #
    # @param api [DefaultApi] the API instance to call through
    # @param notification [Notification] an existing idempotency_key is
    #   respected, never overwritten
    # @param max_retries [Integer] retries after the initial attempt
    # @param base_delay [Float] backoff base in seconds when Retry-After is
    #   absent; clamped to [1.0, 60.0]
    # @return [CreateNotificationWithRetryResult] +response+ holds the
    #   CreateNotificationSuccessResponse; +was_replayed+ is true when the
    #   server answered from a previously completed request, as signaled by
    #   the +Idempotent-Replayed+ response header
    def self.create_notification_with_retry(api, notification, max_retries: 3, base_delay: 1.0)
      if notification.idempotency_key.nil? || notification.idempotency_key.to_s.empty?
        notification.idempotency_key = SecureRandom.uuid
      end

      # Clamp the backoff base so a stray value can neither hammer the API
      # (too small) nor stall the caller for an unbounded stretch (too large).
      base_delay = [[base_delay, MIN_BASE_DELAY].max, MAX_BASE_DELAY].min

      attempt = 0
      begin
        data, _status, headers = api.create_notification_with_http_info(notification)
        CreateNotificationWithRetryResult.new(data, replayed?(headers))
      rescue ApiError => e
        # code nil/0 covers connection timeouts and libcurl-level failures.
        retryable = e.code.nil? || e.code.zero? || RETRYABLE_CODES.include?(e.code)
        raise if !retryable || attempt >= max_retries

        delay = retry_delay(e.response_headers, attempt, base_delay)
        sleep(delay) if delay > 0
        attempt += 1
        retry
      end
    end

    def self.header_value(headers, name)
      return nil unless headers.respond_to?(:each_pair)

      headers.each_pair do |key, value|
        return value if key.to_s.downcase == name
      end
      nil
    end
    private_class_method :header_value

    def self.replayed?(headers)
      header_value(headers, 'idempotent-replayed').to_s.strip.downcase == 'true'
    end
    private_class_method :replayed?

    def self.retry_delay(headers, attempt, base_delay)
      retry_after = header_value(headers, 'retry-after')
      if retry_after && retry_after.to_s.strip.match?(/\A\d+(\.\d+)?\z/)
        return retry_after.to_f
      end

      base_delay * (2**attempt)
    end
    private_class_method :retry_delay
  end

  # Surface the idempotent-retry helper as an instance method so the call
  # mirrors +create_notification+. Delegates to Helpers (single source of
  # truth); reopening is load-order independent since the body runs at call
  # time. See Helpers.create_notification_with_retry for the full contract.
  class DefaultApi
    def create_notification_with_retry(notification, max_retries: 3, base_delay: 1.0)
      Helpers.create_notification_with_retry(self, notification, max_retries: max_retries, base_delay: base_delay)
    end
  end
end
