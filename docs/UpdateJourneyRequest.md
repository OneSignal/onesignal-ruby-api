# OneSignal::UpdateJourneyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Journey name. | [optional] |
| **description** | **String** | Journey description. Send null to clear it. | [optional] |
| **audience** | [**JourneyAudience**](JourneyAudience.md) |  | [optional] |
| **early_exit** | [**JourneyEarlyExit**](JourneyEarlyExit.md) |  | [optional] |
| **reentry_rules** | [**JourneyReentryRules**](JourneyReentryRules.md) |  | [optional] |
| **schedule** | [**JourneySchedule**](JourneySchedule.md) |  | [optional] |
| **nodes** | [**Array&lt;JourneyNode&gt;**](JourneyNode.md) | Full ordered list of nodes, which replaces the existing graph wholesale. Preserve each node&#39;s server-assigned id from a prior fetch to keep in-flight users on that node; omit id to add a new node. | [optional] |
| **state** | **String** | Target state. Set active to activate a draft journey, or scheduled together with a future schedule.start_at to activate it later. Set archived to stop a running journey; archiving is permanent. Only scheduled and processing journeys can return to draft. | [optional] |
| **concurrency_key** | **String** | Optional optimistic-concurrency token. Pass the concurrency_key from a prior fetch to reject the update with 409 if the journey changed. Omit to skip the check. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateJourneyRequest.new(
  name: nil,
  description: nil,
  audience: nil,
  early_exit: nil,
  reentry_rules: nil,
  schedule: nil,
  nodes: nil,
  state: nil,
  concurrency_key: nil
)
```

