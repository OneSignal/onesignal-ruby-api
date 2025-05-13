# OneSignal::CreateNotificationSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **external_id** | **String** |  | [optional] |
| **errors** | **Object** | Errors include the identifiers that are invalid, or that there are no subscribers. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateNotificationSuccessResponse.new(
  id: null,
  external_id: null,
  errors: null
)
```

