# OneSignal::CreateJourneyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Journey name, up to 300 characters. |  |
| **description** | **String** | Optional journey description, up to 1024 characters. | [optional] |
| **audience** | [**JourneyAudience**](JourneyAudience.md) |  | [optional] |
| **early_exit** | [**JourneyEarlyExit**](JourneyEarlyExit.md) |  | [optional] |
| **reentry_rules** | [**JourneyReentryRules**](JourneyReentryRules.md) |  | [optional] |
| **schedule** | [**JourneySchedule**](JourneySchedule.md) |  | [optional] |
| **nodes** | [**Array&lt;JourneyNode&gt;**](JourneyNode.md) | Ordered list of journey nodes. Server-assigned id fields are rejected on create. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateJourneyRequest.new(
  name: nil,
  description: nil,
  audience: nil,
  early_exit: nil,
  reentry_rules: nil,
  schedule: nil,
  nodes: nil
)
```

