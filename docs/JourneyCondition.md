# OneSignal::JourneyCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Condition kind. Selects which other fields apply. |  |
| **included_segment_ids** | **Array&lt;String&gt;** | segment_membership conditions: Segment UUIDs the user must belong to. | [optional] |
| **excluded_segment_ids** | **Array&lt;String&gt;** | segment_membership conditions: Segment UUIDs the user must not belong to. | [optional] |
| **action** | **String** | on_notification_action conditions: the notification action to branch on. Which actions apply depends on the sending node&#39;s channel. | [optional] |
| **sending_node_id** | **String** | on_notification_action conditions: id of the sending node this action refers to. Returned on reads; accepted on write. | [optional] |
| **client_node_id** | **String** | on_notification_action conditions: write-only alternative to sending_node_id. References the sending node by its client_node_id. | [optional] |
| **name** | **String** | event_trigger conditions: event name, up to 255 characters. | [optional] |
| **attributes** | **Array&lt;Array&lt;JourneyEventAttribute&gt;&gt;** | Event attribute matchers, as a list of condition groups. Send a single group whose conditions are AND&#39;d together. More than one group is rejected. | [optional] |
| **entry_event_match_attributes** | **Array&lt;Object&gt;** | event_trigger conditions: match incoming event properties against the journey&#39;s entry event. Only valid on event-triggered journeys. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyCondition.new(
  kind: nil,
  included_segment_ids: nil,
  excluded_segment_ids: nil,
  action: nil,
  sending_node_id: nil,
  client_node_id: nil,
  name: nil,
  attributes: nil,
  entry_event_match_attributes: nil
)
```

