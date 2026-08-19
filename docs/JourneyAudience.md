# OneSignal::JourneyAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Audience kind. Selects which other fields apply. |  |
| **included_segment_ids** | **Array&lt;String&gt;** | segment audiences: Segment UUIDs whose users enter the journey. | [optional] |
| **excluded_segment_ids** | **Array&lt;String&gt;** | segment audiences: Segment UUIDs whose users are excluded. | [optional] |
| **future_additions_only** | **Boolean** | segment audiences: when true, only users who newly match the segment after activation enter the journey. Defaults to false. | [optional] |
| **name** | **String** | event_trigger audiences: event name that triggers entry, up to 255 characters. | [optional] |
| **attributes** | **Array&lt;Array&lt;JourneyEventAttribute&gt;&gt;** | Event attribute matchers, as a list of condition groups. Send a single group whose conditions are AND&#39;d together. More than one group is rejected. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyAudience.new(
  kind: nil,
  included_segment_ids: nil,
  excluded_segment_ids: nil,
  future_additions_only: nil,
  name: nil,
  attributes: nil
)
```

