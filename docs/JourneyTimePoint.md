# OneSignal::JourneyTimePoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Integer** | Hour of day, 0-23. | [optional] |
| **minute** | **Integer** | Minute of hour, 0-59. Defaults to 0. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyTimePoint.new(
  hour: nil,
  minute: nil
)
```

