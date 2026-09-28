# OneSignal::DuplicateJourneyOverrides

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the copy, up to 300 characters. If you omit it, the copy takes the name of the source plus \&quot; (Copy)\&quot;. | [optional] |
| **description** | **String** | Optional journey description, up to 1024 characters. If you omit it, the copy takes the description of the source. Send null to clear it. | [optional] |
| **audience** | [**JourneyAudience**](JourneyAudience.md) |  | [optional] |
| **early_exit** | [**JourneyEarlyExit**](JourneyEarlyExit.md) |  | [optional] |
| **reentry_rules** | [**JourneyReentryRules**](JourneyReentryRules.md) |  | [optional] |
| **schedule** | [**JourneySchedule**](JourneySchedule.md) |  | [optional] |
| **nodes** | [**Array&lt;JourneyNode&gt;**](JourneyNode.md) | Full ordered list of nodes. Replaces the copied graph. Server-assigned id fields are rejected. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::DuplicateJourneyOverrides.new(
  name: nil,
  description: nil,
  audience: nil,
  early_exit: nil,
  reentry_rules: nil,
  schedule: nil,
  nodes: nil
)
```

