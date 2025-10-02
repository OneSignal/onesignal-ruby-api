# OneSignal::StartLiveActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | An internal name to assist with your campaign organization. This does not get displayed in the message itself. |  |
| **event** | **String** |  | [default to &#39;start&#39;] |
| **activity_id** | **String** | Set a unique activity_id to track and manage the Live Activity. |  |
| **event_attributes** | **Object** | Default/static data to initialize the Live Activity upon start. |  |
| **event_updates** | **Object** | Dynamic content used to update the running Live Activity at start. Must match the ContentState interface defined in your app. |  |
| **contents** | [**LanguageStringMap**](LanguageStringMap.md) |  |  |
| **headings** | [**LanguageStringMap**](LanguageStringMap.md) |  |  |
| **stale_date** | **Integer** | Accepts Unix timestamp in seconds. When time reaches the configured stale date, the system considers the Live Activity out of date, and the ActivityState of the Live Activity changes to ActivityState.stale. | [optional] |
| **priority** | **Integer** | Delivery priority through the push provider (APNs). Pass 10 for higher priority notifications, or 5 for lower priority notifications. Lower priority notifications are sent based on the power considerations of the end user&#39;s device. If not set, defaults to 10. | [optional] |
| **ios_relevance_score** | **Float** | iOS 15+. A score to indicate how a notification should be displayed when grouped. Use a float between 0-1. | [optional] |
| **idempotency_key** | **String** | Correlation and idempotency key. A request received with this parameter will first look for another notification with the same idempotency key. If one exists, a notification will not be sent, and result of the previous operation will instead be returned. Therefore, if you plan on using this feature, it&#39;s important to use a good source of randomness to generate the UUID passed here. This key is only idempotent for 30 days. After 30 days, the notification could be removed from our system and a notification with the same idempotency key will be sent again.   See Idempotent Notification Requests for more details writeOnly: true  | [optional] |
| **include_aliases** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Target specific users by aliases assigned via API. An alias can be an external_id, onesignal_id, or a custom alias. Accepts an object where keys are alias labels and values are arrays of alias IDs to include Example usage: { \&quot;external_id\&quot;: [\&quot;exId1\&quot;, \&quot;extId2\&quot;], \&quot;internal_label\&quot;: [\&quot;id1\&quot;, \&quot;id2\&quot;] } Not compatible with any other targeting parameters. REQUIRED: REST API Key Authentication Limit of 2,000 entries per REST API call Note: If targeting push, email, or sms subscribers with same ids, use with target_channel to indicate you are sending a push or email or sms. | [optional] |
| **include_subscription_ids** | **Array&lt;String&gt;** | Specific subscription ids to target. Not compatible with other targeting parameters. | [optional] |
| **included_segments** | **Array&lt;String&gt;** | Segment names to include. Only compatible with excluded_segments. | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | Segment names to exclude. Only compatible with included_segments. | [optional] |
| **filters** | [**Array&lt;FilterExpression&gt;**](FilterExpression.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::StartLiveActivityRequest.new(
  name: null,
  event: null,
  activity_id: null,
  event_attributes: null,
  event_updates: null,
  contents: null,
  headings: null,
  stale_date: null,
  priority: null,
  ios_relevance_score: null,
  idempotency_key: null,
  include_aliases: null,
  include_subscription_ids: null,
  included_segments: null,
  excluded_segments: null,
  filters: null
)
```

