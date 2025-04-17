# OneSignal::ExportSubscriptionsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extra_fields** | **Array&lt;String&gt;** | Additional fields that you wish to include. Currently supports location, country, rooted, notification_types, ip, external_user_id, web_auth, and web_p256. | [optional] |
| **last_active_since** | **String** | Export all devices with a last_active timestamp greater than this time.  Unixtime in seconds. | [optional] |
| **segment_name** | **String** | Export all devices belonging to the segment. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::ExportSubscriptionsRequestBody.new(
  extra_fields: null,
  last_active_since: null,
  segment_name: null
)
```

