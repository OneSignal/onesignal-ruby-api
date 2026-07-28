# OneSignal::UpdateSegmentSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | true if the segment was updated successfully, false otherwise. | [optional] |
| **id** | **String** | UUID of the updated segment. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateSegmentSuccessResponse.new(
  success: nil,
  id: nil
)
```

