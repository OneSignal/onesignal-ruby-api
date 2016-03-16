module OneSignal
  class NotificationResource < BaseResource
    def all(params = {})
      get('/notifications', params)

      response_body['notifications'].map(&OneSignal::Notification)
    end

    def find(id)
      get("/notifications/#{id}")

      OneSignal::Notification.new(response_body)
    end

    def track_open(id, params)
      put("/notifications/#{id}", params)

      true
    end

    def create(params)
      post('/notifications', params)

      response_body
    end

    def cancel(id)
      delete("/notifications/#{id}")

      true
    end
  end
end
