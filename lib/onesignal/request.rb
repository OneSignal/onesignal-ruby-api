require 'net/http'

module OneSignal
  class Request
    def initialize(client)
      @client = client
    end

    def get(path, params = {})
      uri = uri(path)

      if @client.app_id
        params[:app_id] = @client.app_id
      end

      uri.query = URI.encode_www_form(params)

      request(uri, Net::HTTP::Get)
    end

    def post(path, params)
      uri = uri(path)
      request(uri, Net::HTTP::Post, params)
    end

    def put(path, params)
      uri = uri(path)
      request(uri, Net::HTTP::Put, params)
    end

    def delete(path, params = {})
      uri = uri(path)

      if @client.app_id
        params[:app_id] = @client.app_id
      end

      uri.query = URI.encode_www_form(params)

      request(uri, Net::HTTP::Delete, params)
    end

    private

    def uri(path)
      URI.parse(OneSignal::Client::BASE_URL + path)
    end

    def request(uri, klass, params = nil)
      request = klass.new(uri.request_uri)

      if params && @client.app_id
        params[:app_id] = @client.app_id
      end

      if params
        request.body = params.to_json
      end

      response = make_request(uri, request)

      ensure_success(response, uri, params)

      response
    end

    def make_request(uri, request)
      add_headers(request)
      http = http_object(uri)
      http.request(request)
    end

    def add_headers(request)
      request.add_field('Content-Type', 'application/json')
      request.add_field('Authorization', "Basic #{@client.auth_token}")
    end

    def http_object(uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 30
      http.read_timeout = 30

      http
    end

    def ensure_success(response, uri, params = nil)
      if response.code != '200'
        message = "OneSignal error - uri: #{uri} - params: #{params}"
        raise RequestError.new(message, response.code, response.body)
      end
    end
  end
end
