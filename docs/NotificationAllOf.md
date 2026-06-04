# OneSignal::NotificationAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_after** | **Time** | Channel: All Schedule notification for future delivery. API defaults to UTC -1100 Examples: All examples are the exact same date &amp; time. \&quot;Thu Sep 24 2015 14:00:00 GMT-0700 (PDT)\&quot; \&quot;September 24th 2015, 2:00:00 pm UTC-07:00\&quot; \&quot;2015-09-24 14:00:00 GMT-0700\&quot; \&quot;Sept 24 2015 14:00:00 GMT-0700\&quot; \&quot;Thu Sep 24 2015 14:00:00 GMT-0700 (Pacific Daylight Time)\&quot; Note: SMS currently only supports send_after parameter.  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::NotificationAllOf.new(
  send_after: null
)
```

