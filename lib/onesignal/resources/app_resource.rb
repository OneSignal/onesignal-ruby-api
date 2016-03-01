require 'json'

module OneSignal
  class AppResource
    def initialize(client)
      @client = client
    end

    def all
      response = request.get('/apps')
      apps = JSON.parse(response.body)

      apps.map(&OneSignal::App)
    end

    def find(id)
      response = request.get("/apps/#{id}")
      app = JSON.parse(response.body)

      OneSignal::App.new(app)
    end

    def create(params)
      response = request.post('/apps', params)
      app = JSON.parse(response.body)

      OneSignal::App.new(app)
    end

    def update(id, params)
      response = request.put("/apps/#{id}", params)
      app = JSON.parse(response.body)

      OneSignal::App.new(app)
    end

    private

    def request
      @request ||= OneSignal::Request.new(@client)
    end
  end
end
