# OneSignal::NotificationSlice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **notifications** | [**Array&lt;Notification&gt;**](Notification.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::NotificationSlice.new(
  total_count: null,
  offset: null,
  limit: null,
  notifications: null
)
```

