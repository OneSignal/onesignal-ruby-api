# OneSignal::JourneyMessageStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **totals** | **Hash&lt;String, Float&gt;** | All-time totals for this node, keyed by channel-specific stat name. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyMessageStats.new(
  totals: nil
)
```

