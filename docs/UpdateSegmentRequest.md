# OneSignal::UpdateSegmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Required. The segment name. Maximum 128 characters. |  |
| **description** | **String** | Optional human-readable description for the segment. Maximum 255 characters. Pass an empty string to clear; omit to leave unchanged. | [optional] |
| **filters** | [**Array&lt;FilterExpression&gt;**](FilterExpression.md) | Optional. When provided, replaces all existing filters. Filters define the segment based on user properties like tags, activity, or location using flexible AND/OR logic. Limited to 200 total entries, including fields and OR operators. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateSegmentRequest.new(
  name: nil,
  description: nil,
  filters: nil
)
```

