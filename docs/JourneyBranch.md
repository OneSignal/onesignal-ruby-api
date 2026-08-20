# OneSignal::JourneyBranch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Server-assigned branch identifier. Read-only on create; echo it on update to keep the branch. | [optional] |
| **condition** | [**JourneyCondition**](JourneyCondition.md) |  | [optional] |
| **weight** | **Float** | Branch weight for split_range nodes. Weights across a node&#39;s branches must sum to 100. | [optional] |
| **nodes** | [**Array&lt;JourneyNode&gt;**](JourneyNode.md) | Nodes run when this branch is taken, before flow converges to the next sibling node. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyBranch.new(
  id: nil,
  condition: nil,
  weight: nil,
  nodes: nil
)
```

