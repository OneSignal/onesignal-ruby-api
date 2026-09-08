# OneSignal::EmailReputationWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bounce_rate** | **Float** | The fraction of successfully delivered emails that hard or soft bounced during the window. | [optional] |
| **complaint_rate** | **Float** | The fraction of successfully delivered emails that recipients reported as spam during the window. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EmailReputationWindow.new(
  bounce_rate: 0.02,
  complaint_rate: 0.001
)
```

