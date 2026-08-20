# OneSignal::JourneyListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **journeys** | [**Array&lt;JourneyListItem&gt;**](JourneyListItem.md) | Journeys ordered by creation time, newest first. | [optional] |
| **has_more** | **Boolean** | true if more journeys exist beyond this page. | [optional] |
| **next_cursor** | **String** | Cursor for the next page. Present only when has_more is true. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyListResponse.new(
  journeys: nil,
  has_more: nil,
  next_cursor: nil
)
```

