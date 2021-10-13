# OneSignal::DeliveryData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **successful** | **Integer** |  | [optional] |
| **failed** | **Integer** |  | [optional] |
| **errored** | **Integer** |  | [optional] |
| **converted** | **Integer** |  | [optional] |
| **received** | **Integer** |  | [optional] |

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

