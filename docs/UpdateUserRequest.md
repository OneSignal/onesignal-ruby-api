# OneSignal::UpdateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**PropertiesObject**](PropertiesObject.md) |  | [optional] |
| **refresh_device_metadata** | **Boolean** |  | [optional][default to false] |
| **deltas** | [**PropertiesDeltas**](PropertiesDeltas.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateUserRequest.new(
  properties: null,
  refresh_device_metadata: null,
  deltas: null
)
```

