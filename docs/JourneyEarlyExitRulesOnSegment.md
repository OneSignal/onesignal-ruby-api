# OneSignal::JourneyEarlyExitRulesOnSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **included_segment_ids** | **Array&lt;String&gt;** | Exit when the user enters any of these segments. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyEarlyExitRulesOnSegment.new(
  included_segment_ids: nil
)
```

