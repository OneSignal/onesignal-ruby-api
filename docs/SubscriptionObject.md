# OneSignal::SubscriptionObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **notification_types** | **Integer** |  | [optional] |
| **session_time** | **Float** |  | [optional] |
| **session_count** | **Float** |  | [optional] |
| **sdk** | **String** |  | [optional] |
| **device_model** | **String** |  | [optional] |
| **device_os** | **String** |  | [optional] |
| **rooted** | **Boolean** |  | [optional] |
| **test_type** | **Float** |  | [optional] |
| **app_version** | **String** |  | [optional] |
| **net_type** | **Float** |  | [optional] |
| **carrier** | **String** |  | [optional] |
| **web_auth** | **String** |  | [optional] |
| **web_p256** | **String** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::SubscriptionObject.new(
  id: null,
  type: null,
  token: null,
  enabled: null,
  notification_types: null,
  session_time: null,
  session_count: null,
  sdk: null,
  device_model: null,
  device_os: null,
  rooted: null,
  test_type: null,
  app_version: null,
  net_type: null,
  carrier: null,
  web_auth: null,
  web_p256: null
)
```

