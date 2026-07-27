# OneSignal::GetSegmentSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_count** | **Integer** | The number of subscribers matching this segment. | [optional] |
| **payload** | [**SegmentDetails**](SegmentDetails.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::GetSegmentSuccessResponse.new(
  subscriber_count: nil,
  payload: nil
)
```

