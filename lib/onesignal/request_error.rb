module OneSignal
  class RequestError < StandardError
    attr_reader :http_status
    attr_reader :http_body

    def initialize(message, http_status, http_body)
      @http_status = http_status
      @http_body = http_body

      if @http_status
        message += " - http status : #{@http_status}"
      end

      if @http_body
        message += " - http body : #{@http_body}"
      end

      super(message)
    end
  end
end
