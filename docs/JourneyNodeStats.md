# OneSignal::JourneyNodeStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Node kind, repeated here so stats can be read without joining against the journey definition. | [optional] |
| **waiting** | **Integer** | Users currently held at this node. | [optional] |
| **completed** | **Integer** | Users who advanced past this node normally. | [optional] |
| **exited_early** | **Integer** | Users who left the journey from this node through an early exit rule. | [optional] |
| **message_stats** | [**JourneyMessageStats**](JourneyMessageStats.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyNodeStats.new(
  kind: nil,
  waiting: nil,
  completed: nil,
  exited_early: nil,
  message_stats: nil
)
```

