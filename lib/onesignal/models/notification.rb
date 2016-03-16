module OneSignal
  class Notification < BaseModel
    attr_accessor :canceled, :contents, :converted, :data, :failed, :headings,
      :id, :queued_at, :remaining, :send_after, :successful, :url

    def queued_at=(time)
      @queued_at = Time.at(time)
    end

    def send_after=(time)
      @send_after = Time.at(time)
    end
  end
end
