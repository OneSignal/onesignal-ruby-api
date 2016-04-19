module OneSignal
  class Client
    BASE_URL = 'https://onesignal.com/api/v1'.freeze

    attr_reader :auth_token, :app_id

    def initialize(auth_token: nil, app_id: nil)
      @auth_token = auth_token
      @app_id = app_id

      ensure_auth_token_presence
    end

    def apps
      @apps ||= AppResource.new(self)
    end

    def players
      ensure_app_id_presence

      @players ||= PlayerResource.new(self)
    end

    def notifications
      ensure_app_id_presence

      @notifications ||= NotificationResource.new(self)
    end

    private

    def ensure_auth_token_presence
      if auth_token.nil?
        raise ArgumentError, 'missing keyword: auth_token'
      end
    end

    def ensure_app_id_presence
      if app_id.nil?
        raise AppIdMissingError
      end
    end
  end
end
