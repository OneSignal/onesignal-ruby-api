# OneSignal::GetSegmentsSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The number of Segments in the response. | [optional] |
| **offset** | **Integer** | Set with the offset query parameter. Default 0. | [optional] |
| **limit** | **Integer** | Maximum number of Segments returned. Default 300. | [optional] |
| **segments** | [**Array&lt;SegmentData&gt;**](SegmentData.md) | An array containing the Segment information. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::GetSegmentsSuccessResponse.new(
  total_count: null,
  offset: null,
  limit: null,
  segments: null
)
```

