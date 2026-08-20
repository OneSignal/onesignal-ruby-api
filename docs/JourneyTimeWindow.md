# OneSignal::JourneyTimeWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | [**JourneyTimePoint**](JourneyTimePoint.md) | When the window opens. | [optional] |
| **_end** | [**JourneyTimePoint**](JourneyTimePoint.md) | When the window closes. | [optional] |
| **day_of_week** | **Integer** | Day of week, 1 &#x3D; Monday. Omit to apply the window to every day. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyTimeWindow.new(
  start: nil,
  _end: nil,
  day_of_week: nil
)
```

