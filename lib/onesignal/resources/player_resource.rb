module OneSignal
  class PlayerResource < BaseResource
    def all(params = {})
      get('/players', params)
      players = response_body['players']

      players.map(&OneSignal::Player)
    end

    def find(id)
      get("/players/#{id}")

      OneSignal::Player.new(response_body)
    end

    def create(params)
      post('/players', params)

      response_body['id']
    end

    def update(id, params)
      put("/players/#{id}", params)

      true
    end

    def on_session(id, params)
      post("/players/#{id}/on_session", params)

      true
    end

    def on_purchase(id, params)
      post("/players/#{id}/on_purchase", params)

      true
    end

    def on_focus(id, params)
      post("/players/#{id}/on_focus", params)

      true
    end

    def csv_export(id)
      params = { app_id: id }
      post('/players/csv_export', params)

      response_body['csv_file_url']
    end
  end
end
