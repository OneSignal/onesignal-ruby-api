# OneSignal::SegmentDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the segment (UUID v4). | [optional] |
| **name** | **String** | The segment name. | [optional] |
| **description** | **String** | Human-readable description for the segment. &#x60;null&#x60; when unset. Maximum 255 characters. | [optional] |
| **created_at** | **Integer** | Unix timestamp when the segment was created. | [optional] |
| **source** | **String** | The source of the segment. | [optional] |
| **filters** | [**Array&lt;FilterExpression&gt;**](FilterExpression.md) | Array of filter and operator objects defining the segment criteria. Uses the same format as the Create Segment API, so filters can be directly used to recreate or update the segment. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::SegmentDetails.new(
  id: nil,
  name: nil,
  description: nil,
  created_at: nil,
  source: nil,
  filters: nil
)
```

