# OneSignal::InlineResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **recipients** | **Integer** | Estimated number of subscribers targetted by notification. |  |
| **external_id** | **String** |  | [optional] |
| **errors** | [**Notification200Errors**](Notification200Errors.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::InlineResponse200.new(
  id: null,
  recipients: null,
  external_id: null,
  errors: null
)
```

