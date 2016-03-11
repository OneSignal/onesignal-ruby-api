module OneSignal
  class PlayerResource
    def initialize(client)
      @client = client
    end

    def all(params = {})
      response = request.get('/players', params)
      players = JSON.parse(response.body)['players']

      players.map(&OneSignal::Player)
    end

    def find(id)
      response = request.get("/players/#{id}")
      player = JSON.parse(response.body)

      OneSignal::Player.new(player)
    end

    def create(params)
      response = request.post('/players', params)

      JSON.parse(response.body)['id']
    end

    def update(id, params)
      request.put("/players/#{id}", params)

      true
    end

    def on_session(id, params)
      request.post("/players/#{id}/on_session", params)

      true
    end

    def on_purchase(id, params)
      request.post("/players/#{id}/on_purchase", params)

      true
    end

    def on_focus(id, params)
      request.post("/players/#{id}/on_focus", params)

      true
    end

    def csv_export(id)
      params = { app_id: id }
      response = request.post('/players/csv_export', params)

      JSON.parse(response.body)['csv_file_url']
    end

    private

    def request
      @request ||= OneSignal::Request.new(@client)
    end
  end
end
