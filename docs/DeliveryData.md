# OneSignal::DeliveryData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **successful** | **Integer** | Number of messages delivered to push servers, mobile carriers, or email service providers. | [optional] |
| **failed** | **Integer** | Number of messages sent to unsubscribed devices. | [optional] |
| **errored** | **Integer** | Number of errors reported. | [optional] |
| **converted** | **Integer** | Number of messages that were clicked. | [optional] |
| **received** | **Integer** | Number of devices that received the message. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::DeliveryData.new(
  successful: null,
  failed: null,
  errored: null,
  converted: null,
  received: null
)
```

