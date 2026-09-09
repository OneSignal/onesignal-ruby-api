# OneSignal::EmailReputationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_24_hours** | [**EmailReputationWindow**](EmailReputationWindow.md) |  | [optional] |
| **last_7_days** | [**EmailReputationWindow**](EmailReputationWindow.md) |  | [optional] |
| **last_30_days** | [**EmailReputationWindow**](EmailReputationWindow.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EmailReputationResponse.new(
  last_24_hours: nil,
  last_7_days: nil,
  last_30_days: nil
)
```

