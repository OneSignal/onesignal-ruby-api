module OneSignal
  class AppResource < BaseResource
    def all
      get('/apps')

      response_body.map(&OneSignal::App)
    end

    def find(id)
      get("/apps/#{id}")

      OneSignal::App.new(response_body)
    end

    def create(params)
      post('/apps', params)

      OneSignal::App.new(response_body)
    end

    def update(id, params)
      put("/apps/#{id}", params)

      OneSignal::App.new(response_body)
    end
  end
end
