# OneSignal::JourneyEarlyExitRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_segment** | [**JourneyEarlyExitRulesOnSegment**](JourneyEarlyExitRulesOnSegment.md) |  | [optional] |
| **when_not_in_audience** | **Boolean** | Exit when the user no longer matches the journey audience. Defaults to false. | [optional] |
| **on_session** | **Boolean** | Exit on a new session start. Defaults to false. | [optional] |
| **on_event** | [**JourneyEarlyExitRulesOnEvent**](JourneyEarlyExitRulesOnEvent.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyEarlyExitRules.new(
  on_segment: nil,
  when_not_in_audience: nil,
  on_session: nil,
  on_event: nil
)
```

