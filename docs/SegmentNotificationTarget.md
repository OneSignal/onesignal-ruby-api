# OneSignal::SegmentNotificationTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **included_segments** | **Array&lt;String&gt;** | The segment names you want to target. Users in these segments will receive a notification. This targeting parameter is only compatible with excluded_segments. Example: [\&quot;Active Users\&quot;, \&quot;Inactive Users\&quot;]  | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | Segment that will be excluded when sending. Users in these segments will not receive a notification, even if they were included in included_segments. This targeting parameter is only compatible with included_segments. Example: [\&quot;Active Users\&quot;, \&quot;Inactive Users\&quot;]  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::SegmentNotificationTarget.new(
  included_segments: null,
  excluded_segments: null
)
```

