# OneSignal::NotificationSlice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **time_offset** | **String** | The time_offset cursor specified in the request, if any. | [optional] |
| **next_time_offset** | **String** | An opaque Base64 cursor token representing the next page of messages to fetch.  Present when time_offset was provided in the request.  Pass this value as time_offset on the next request to continue paginating. | [optional] |
| **notifications** | [**Array&lt;NotificationWithMeta&gt;**](NotificationWithMeta.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::NotificationSlice.new(
  total_count: nil,
  offset: nil,
  limit: nil,
  time_offset: nil,
  next_time_offset: nil,
  notifications: nil
)
```

