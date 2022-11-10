# OneSignal::App

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** | The name of your app, as displayed on your apps list on the dashboard.  This can be renamed. | [optional] |
| **players** | **Integer** |  | [optional][readonly] |
| **messageable_players** | **Integer** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **android_gcm_sender_id** | **String** | Android: Your Google Project number.  Also known as Sender ID. | [optional] |
| **gcm_key** | **String** | Android: Your Google Push Messaging Auth Key | [optional] |
| **chrome_web_origin** | **String** | Chrome (All Browsers except Safari) (Recommended): The URL to your website.  This field is required if you wish to enable web push and specify other web push parameters. | [optional] |
| **chrome_key** | **String** | Not for web push.  Your Google Push Messaging Auth Key if you use Chrome Apps / Extensions. | [optional] |
| **chrome_web_default_notification_icon** | **String** | Chrome (All Browsers except Safari): Your default notification icon. Should be 256x256 pixels, min 80x80. | [optional] |
| **chrome_web_sub_domain** | **String** | Chrome (All Browsers except Safari): A subdomain of your choice in order to support Web Push on non-HTTPS websites. This field must be set in order for the chrome_web_gcm_sender_id property to be processed. | [optional] |
| **apns_env** | **String** | iOS: Either sandbox or production | [optional] |
| **apns_p12** | **String** | iOS: Your apple push notification p12 certificate file, converted to a string and Base64 encoded. | [optional] |
| **apns_p12_password** | **String** | iOS: Required if using p12 certificate.  Password for the apns_p12 file. | [optional] |
| **apns_certificates** | **String** |  | [optional][readonly] |
| **safari_apns_certificates** | **String** |  | [optional][readonly] |
| **safari_apns_p12** | **String** | Safari: Your apple push notification p12 certificate file for Safari Push Notifications, converted to a string and Base64 encoded. | [optional] |
| **safari_apns_p12_password** | **String** | Safari: Password for safari_apns_p12 file | [optional] |
| **safari_site_origin** | **String** | Safari (Recommended): The hostname to your website including http(s):// | [optional] |
| **safari_push_id** | **String** |  | [optional][readonly] |
| **safari_icon_16_16** | **String** |  | [optional][readonly] |
| **safari_icon_32_32** | **String** |  | [optional][readonly] |
| **safari_icon_64_64** | **String** |  | [optional][readonly] |
| **safari_icon_128_128** | **String** |  | [optional][readonly] |
| **safari_icon_256_256** | **String** | Safari: A url for a 256x256 png notification icon. This is the only Safari icon URL you need to provide. | [optional] |
| **site_name** | **String** | All Browsers (Recommended): The Site Name. Requires both chrome_web_origin and safari_site_origin to be set to add or update it. | [optional] |
| **basic_auth_key** | **String** |  | [optional][readonly] |
| **organization_id** | **String** | The Id of the Organization you would like to add this app to. | [optional] |
| **additional_data_is_root_payload** | **Boolean** | iOS: Notification data (additional data) values will be added to the root of the apns payload when sent to the device.  Ignore if you&#39;re not using any other plugins, or not using OneSignal SDK methods to read the payload. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::App.new(
  id: null,
  name: null,
  players: null,
  messageable_players: null,
  updated_at: null,
  created_at: null,
  android_gcm_sender_id: null,
  gcm_key: null,
  chrome_web_origin: null,
  chrome_key: null,
  chrome_web_default_notification_icon: null,
  chrome_web_sub_domain: null,
  apns_env: null,
  apns_p12: null,
  apns_p12_password: null,
  apns_certificates: null,
  safari_apns_certificates: null,
  safari_apns_p12: null,
  safari_apns_p12_password: null,
  safari_site_origin: null,
  safari_push_id: null,
  safari_icon_16_16: null,
  safari_icon_32_32: null,
  safari_icon_64_64: null,
  safari_icon_128_128: null,
  safari_icon_256_256: null,
  site_name: null,
  basic_auth_key: null,
  organization_id: null,
  additional_data_is_root_payload: null
)
```

