module OneSignal
  class Player < BaseModel
    attr_accessor :ad_id, :amount_spent, :badge_count, :created_at,
      :device_model, :device_os, :device_type, :game_version, :identifier,
      :invalid_identifier, :language, :last_active, :session_count, :tags,
      :timezone

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
