# OneSignal::JourneySchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_at** | **String** | ISO 8601 start time. Use UTC (Z or +00:00). Must be at least 5 minutes in the future. | [optional] |
| **stop_at** | **String** | ISO 8601 stop time. Use UTC (Z or +00:00). Must be in the future and later than start_at. | [optional] |
| **error** | **String** | Read-only. Present when a scheduling error occurred. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneySchedule.new(
  start_at: nil,
  stop_at: nil,
  error: nil
)
```

