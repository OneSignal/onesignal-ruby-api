module OneSignal
  class Notification < BaseModel
    def queued_at=(time)
      @queued_at = Time.at(time)
    end

    def send_after=(time)
      @send_after = Time.at(time)
    end
  end
end
