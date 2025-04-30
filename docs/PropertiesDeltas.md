# OneSignal::PropertiesDeltas

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_time** | **Integer** |  | [optional] |
| **session_count** | **Integer** |  | [optional] |
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

