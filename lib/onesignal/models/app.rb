module OneSignal
  class App < BaseModel
    attr_accessor :apns_certificates, :apns_env, :basic_auth_key, :chrome_key,
      :chrome_web_default_notification_icon, :chrome_web_gcm_sender_id,
      :chrome_web_origin, :chrome_web_sub_domain, :created_at, :gcm_key, :id,
      :messagable_players, :name, :players, :safari_apns_cetificate,
      :safari_icon_128_128, :safari_icon_16_16, :safari_icon_256_256,
      :safari_icon_32_32, :safari_icon_64_64, :safari_push_id,
      :safari_site_origin, :site_name, :updated_at
  end
end
