# OneSignal::JourneyStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID of the journey these stats belong to. | [optional] |
| **started** | **Integer** | Users who entered the journey. | [optional] |
| **completed** | **Integer** | Users who reached the end of the journey normally. | [optional] |
| **exited_early** | **Integer** | Users who left the journey through an early exit rule. | [optional] |
| **nodes** | [**Hash&lt;String, JourneyNodeStats&gt;**](JourneyNodeStats.md) | Node stats keyed by node id. Includes every node in the graph, at any nesting depth. | [optional] |
| **branches** | [**Hash&lt;String, JourneyBranchStats&gt;**](JourneyBranchStats.md) | Branch stats keyed by branch id. Empty for a journey with no branching nodes. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyStats.new(
  id: nil,
  started: nil,
  completed: nil,
  exited_early: nil,
  nodes: nil,
  branches: nil
)
```

