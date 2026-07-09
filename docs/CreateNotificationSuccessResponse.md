# OneSignal::CreateNotificationSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Notification identifier when the request created a notification. An empty string means no notification was created; read &#x60;errors&#x60; for details (HTTP may still be 200). All OneSignal server SDKs expose message-sent / message-not-sent narrowing helpers (named idiomatically per language — e.g. &#x60;isMessageSent&#x60;, &#x60;is_message_sent&#x60;, &#x60;message_sent?&#x60;); prefer them over comparing &#x60;id&#x60; directly. | [optional] |
| **external_id** | **String** | Optional correlation / idempotency-related value from the API response. This is not the end-user External ID used for targeting recipients (that lives under &#x60;include_aliases.external_id&#x60;). | [optional] |
| **errors** | **Object** | Polymorphic field: may be an array of human-readable strings and/or an object (for example with &#x60;invalid_aliases&#x60;, &#x60;invalid_external_user_ids&#x60;, or &#x60;invalid_player_ids&#x60;) depending on the API response; HTTP may still be 200 with partial success. Typed SDKs model this loosely so both shapes deserialize. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateNotificationSuccessResponse.new(
  id: nil,
  external_id: nil,
  errors: nil
)
```

