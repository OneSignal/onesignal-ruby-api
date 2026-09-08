# OneSignal::EmailReputationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_24_hours** | [**EmailReputationWindow**](EmailReputationWindow.md) | Bounce and complaint rates for email delivered over the last 24 hours. | [optional] |
| **last_7_days** | [**EmailReputationWindow**](EmailReputationWindow.md) | Bounce and complaint rates for email delivered over the last 7 days. | [optional] |
| **last_30_days** | [**EmailReputationWindow**](EmailReputationWindow.md) | Bounce and complaint rates for email delivered over the last 30 days. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EmailReputationResponse.new(
  last_24_hours: nil,
  last_7_days: nil,
  last_30_days: nil
)
```

