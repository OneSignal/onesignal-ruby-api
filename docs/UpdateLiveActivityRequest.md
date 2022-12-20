# OneSignal::UpdateLiveActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Type of live activity |  |
| **event** | **String** |  |  |
| **event_updates** | **Object** |  |  |
| **dismiss_at** | **Float** | Timestamp; only allowed if event is \&quot;end\&quot; | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateLiveActivityRequest.new(
  name: null,
  event: null,
  event_updates: null,
  dismiss_at: null
)
```

