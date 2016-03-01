module OneSignal
  class Client
    BASE_URL = 'https://onesignal.com/api/v1'.freeze

    attr_reader :auth_token, :app_id

    def initialize(auth_token:, app_id: nil)
      @auth_token = auth_token
      @app_id = app_id
    end

    def apps
      @apps ||= AppResource.new(self)
    end
  end
end
