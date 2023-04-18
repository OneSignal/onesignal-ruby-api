# OneSignal::CreateNotificationSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **recipients** | **Integer** | Estimated number of subscribers targetted by notification. | [optional] |
| **external_id** | **String** |  | [optional] |
| **errors** | [**Notification200Errors**](Notification200Errors.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateNotificationSuccessResponse.new(
  id: null,
  recipients: null,
  external_id: null,
  errors: null
)
```

