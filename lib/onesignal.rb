require 'onesignal/version'
require 'onesignal/client'
require 'onesignal/request'
require 'onesignal/request_error'
require 'onesignal/app_id_missing_error'
require 'onesignal/models/base_model'
require 'onesignal/models/app'
require 'onesignal/models/player'
require 'onesignal/models/notification'
require 'onesignal/resources/base_resource'
require 'onesignal/resources/app_resource'
require 'onesignal/resources/player_resource'
require 'onesignal/resources/notification_resource'

module OneSignal
  DEVICE_TYPES = %w(
    ios android amazon mpns chrome_app chrome_website wns safari firefox
  ).freeze

  def self.device_type_as_integer(device_type)
    DEVICE_TYPES.index(device_type)
  end
end
