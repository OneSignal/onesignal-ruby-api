# OneSignal::PlatformDeliveryDataSmsAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_successful** | **Integer** | Number of messages reported as delivered successfully by the SMS service provider. | [optional] |
| **provider_failed** | **Integer** | Number of recipients who didn&#39;t receive your message as reported by the SMS service provider. | [optional] |
| **provider_errored** | **Integer** | Number of errors reported by the SMS service provider. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::PlatformDeliveryDataSmsAllOf.new(
  provider_successful: null,
  provider_failed: null,
  provider_errored: null
)
```

