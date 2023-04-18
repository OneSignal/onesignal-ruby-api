# OneSignal::PropertiesDeltas

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_time** | **Float** |  | [optional] |
| **session_count** | **Float** |  | [optional] |
| **purchases** | [**Array&lt;Purchase&gt;**](Purchase.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::PropertiesDeltas.new(
  session_time: null,
  session_count: null,
  purchases: null
)
```

