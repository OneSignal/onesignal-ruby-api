module OneSignal
  class Player < BaseModel
    def created_at=(time)
      @created_at = Time.at(time)
    end

    def device_type=(type)
      if type.is_a?(Integer)
        type = OneSignal::DEVICE_TYPES[type]
      end

      @device_type = type
    end

    def last_active=(time)
      @last_active = Time.at(time)
    end
  end
end
