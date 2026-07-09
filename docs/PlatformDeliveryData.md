# OneSignal::PlatformDeliveryData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edge_web_push** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **chrome_web_push** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **firefox_web_push** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **safari_web_push** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **android** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **ios** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **sms** | [**DeliveryData**](DeliveryData.md) |  | [optional] |
| **email** | [**DeliveryData**](DeliveryData.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::PlatformDeliveryData.new(
  edge_web_push: nil,
  chrome_web_push: nil,
  firefox_web_push: nil,
  safari_web_push: nil,
  android: nil,
  ios: nil,
  sms: nil,
  email: nil
)
```

