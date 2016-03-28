require 'time'

module OneSignal
  class App < BaseModel
    DATE_REGEX = /\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{3}Z/

    attr_accessor :apns_certificates, :apns_env, :basic_auth_key, :chrome_key,
      :chrome_web_default_notification_icon, :chrome_web_gcm_sender_id,
      :chrome_web_origin, :chrome_web_sub_domain, :created_at, :gcm_key, :id,
      :messageable_players, :name, :players, :safari_apns_certificate,
      :safari_icon_128_128, :safari_icon_16_16, :safari_icon_256_256,
      :safari_icon_32_32, :safari_icon_64_64, :safari_push_id,
      :safari_site_origin, :site_name, :updated_at

    def created_at=(time)
      parse_time('created_at', time)
    end

    def updated_at=(time)
      parse_time('updated_at', time)
    end

    private

    def parse_time(attribute, value)
      if string_date?(value)
        value = Time.parse(value)
      end

      instance_variable_set("@#{attribute}", value)
    end

    def string_date?(date)
      date.is_a?(String) && date.match(DATE_REGEX)
    end
  end
end
