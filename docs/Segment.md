# OneSignal::Segment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID of the segment.  If left empty, it will be assigned automaticaly. | [optional] |
| **name** | **String** | Name of the segment.  You&#39;ll see this name on the Web UI. |  |
| **filters** | [**Array&lt;FilterExpression&gt;**](FilterExpression.md) | Filter or operators the segment will have.  For a list of available filters with details, please see Send to Users Based on Filters. |  |

## Example

```ruby
require 'onesignal'

instance = OneSignal::Segment.new(
  id: null,
  name: null,
  filters: null
)
```

