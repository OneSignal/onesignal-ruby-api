# OneSignal::EstimateNotificationRecipientsSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The estimated audience size based on the user targeting method you&#39;ve set on the message, and the specific platforms the message is targeted to send to. | [optional] |
| **uncapped_count** | **Integer** | The estimated audience size before the plan&#39;s web push subscriber cap is applied. Present only when &#x60;cap_applied&#x60; is &#x60;true&#x60;; &#x60;null&#x60; otherwise. | [optional] |
| **cap_applied** | **Boolean** | Whether &#x60;count&#x60; was reduced because the app is on a plan that caps the number of web push subscribers it can send to. | [optional] |
| **mobile_suppressed** | **Boolean** | The mobile equivalent of &#x60;cap_applied&#x60;. Whether mobile push deliveries will be dropped for this send because the org is over its plan&#39;s mobile push subscriber cap. &#x60;false&#x60; when the notification doesn&#39;t target any mobile push platforms. | [optional] |
| **mobile_excluded_count** | **Integer** | How many mobile push recipients the &#x60;count&#x60; excludes due to the plan&#39;s mobile push subscriber cap. &#x60;0&#x60; when &#x60;mobile_suppressed&#x60; is &#x60;false&#x60;. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EstimateNotificationRecipientsSuccessResponse.new(
  count: nil,
  uncapped_count: nil,
  cap_applied: nil,
  mobile_suppressed: nil,
  mobile_excluded_count: nil
)
```

