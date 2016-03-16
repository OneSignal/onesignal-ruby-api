require 'json'

module OneSignal
  class BaseResource
    def initialize(client)
      @client = client
    end

    private

    def get(path, params = {})
      @response = request.get(path, params)
    end

    def put(path, params)
      @response = request.put(path, params)
    end

    def post(path, params)
      @response = request.post(path, params)
    end

    def delete(path)
      @response = request.delete(path)
    end

    def request
      @request ||= OneSignal::Request.new(@client)
    end

    def response_body
      JSON.parse(@response.body)
    end
  end
end
