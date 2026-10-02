# OneSignal::UpdateJourneyNodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_node_id** | **String** | Optional client-assigned identifier, unique within the journey. Use it to reference this node from elsewhere in the same request. Persisted and returned on reads. | [optional] |
| **annotation** | **String** | Optional free-text label, up to 1024 characters. Stored and returned as-is with no effect on journey behavior. | [optional] |
| **duration_seconds** | **Integer** | wait nodes: seconds to hold the user. Minimum 60, maximum 31556952 (1 year). | [optional] |
| **relative_to** | **String** | time_window nodes: schedule_in_timezone uses the configured windows; last_active_time holds relative to the user&#39;s last active time. | [optional] |
| **windows** | [**Array&lt;JourneyTimeWindow&gt;**](JourneyTimeWindow.md) | time_window nodes: one or more time windows. A window with no day_of_week applies to every day. Required when relative_to is schedule_in_timezone; omit when it is last_active_time. | [optional] |
| **time_zone** | **String** | time_window nodes: IANA timezone identifier used when the user&#39;s timezone is unavailable. | [optional] |
| **use_user_time_zone** | **Boolean** | time_window nodes: when true, uses the user&#39;s timezone if available. | [optional] |
| **template_id** | **String** | send_push, send_email, and send_sms nodes: UUID of the template to send. | [optional] |
| **iam_id** | **String** | send_iam nodes: UUID of the in-app message to send. | [optional] |
| **user_ttl_seconds** | **Integer** | send_iam nodes: optional time-to-live for the in-app message, in seconds. | [optional] |
| **webhook_id** | **String** | send_webhook nodes: UUID of the webhook to send. | [optional] |
| **assignments** | **Hash&lt;String, String&gt;** | tag nodes: tag key-value pairs to assign. An empty string value removes the tag. Keys are limited to 255 characters and values to 1024. | [optional] |
| **randomize_on_entry** | **Boolean** | split_range nodes: when true, assigns each user to a branch at random on entry. Defaults to false. | [optional] |
| **branches** | [**Array&lt;JourneyBranch&gt;**](JourneyBranch.md) | Branching nodes: nested branches. split_range requires 2-25 weighted branches that sum to 100. yes_no requires exactly 2 branches. wait_until requires 1-25 condition branches. | [optional] |
| **expiration** | [**JourneyWaitUntilExpiration**](JourneyWaitUntilExpiration.md) |  | [optional] |
| **concurrency_key** | **String** | Optional optimistic-concurrency token. Pass the concurrency_key from a prior fetch to reject the update with 409 if the journey changed. Omit to skip the check. It is not merged onto the node. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateJourneyNodeRequest.new(
  client_node_id: nil,
  annotation: nil,
  duration_seconds: nil,
  relative_to: nil,
  windows: nil,
  time_zone: nil,
  use_user_time_zone: nil,
  template_id: nil,
  iam_id: nil,
  user_ttl_seconds: nil,
  webhook_id: nil,
  assignments: nil,
  randomize_on_entry: nil,
  branches: nil,
  expiration: nil,
  concurrency_key: nil
)
```

