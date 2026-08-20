# OneSignal::JourneyWaitUntilExpiration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_seconds** | **Integer** | Seconds to wait before the timer fires. Minimum 60, maximum 31556952 (1 year). | [optional] |
| **exits** | **Boolean** | When true, the user exits the journey when the timer fires; when false, the user continues to convergence. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyWaitUntilExpiration.new(
  duration_seconds: nil,
  exits: nil
)
```

