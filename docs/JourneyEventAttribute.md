# OneSignal::JourneyEventAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Event attribute key. |  |
| **operator** | **String** | Comparison operator. |  |
| **value** | **String** | Value to compare against. Not required for exists and not_exists. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyEventAttribute.new(
  key: nil,
  operator: nil,
  value: nil
)
```

