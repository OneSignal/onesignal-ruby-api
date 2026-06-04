# OneSignal::SegmentData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The segment ID | [optional] |
| **name** | **String** | The segment name | [optional] |
| **created_at** | **String** | Date segment created | [optional] |
| **updated_at** | **String** | Date segment last updated | [optional] |
| **app_id** | **String** | The app id | [optional] |
| **read_only** | **Boolean** | Is the segment read only? | [optional] |
| **is_active** | **Boolean** | Is the segment active? | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::SegmentData.new(
  id: null,
  name: null,
  created_at: null,
  updated_at: null,
  app_id: null,
  read_only: null,
  is_active: null
)
```

