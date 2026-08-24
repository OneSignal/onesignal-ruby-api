# OneSignal::UpdateLiveActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | An internal name to assist with your campaign organization. This does not get displayed in the message itself. |  |
| **event** | **String** |  |  |
| **event_updates** | **Object** | This must match the ContentState interface you have defined within your Live Activity in your app. |  |
| **contents** | [**LanguageStringMap**](LanguageStringMap.md) |  | [optional] |
| **headings** | [**LanguageStringMap**](LanguageStringMap.md) |  | [optional] |
| **sound** | **String** | Deprecated. The API ignores this field. Use &#x60;ios_sound&#x60;. | [optional] |
| **ios_sound** | **String** | Sound file that is included in your app to play instead of the default device notification sound. Omit to disable vibration and sound for the notification. Requires &#x60;headings&#x60; on the same request: ActivityKit ignores an update whose alert has no title, which silently drops the sound. Supersedes the deprecated &#x60;sound&#x60; field.  | [optional] |
| **stale_date** | **Integer** | Accepts Unix timestamp in seconds. When time reaches the configured stale date, the system considers the Live Activity out of date, and the ActivityState of the Live Activity changes to ActivityState.stale. | [optional] |
| **dismissal_date** | **Integer** | Accepts Unix timestamp in seconds; only allowed if event is \&quot;end\&quot; | [optional] |
| **priority** | **Integer** | Delivery priority through the push provider (APNs). Pass 10 for higher priority notifications, or 5 for lower priority notifications. Lower priority notifications are sent based on the power considerations of the end user&#39;s device. If not set, defaults to 10. Some providers (APNs) allow for a limited budget of high priority notifications per hour, and if that budget is exceeded, the provider may throttle notification delivery. | [optional] |
| **ios_relevance_score** | **Float** | A value between 0 and 1. When more than one Live Activity is active for your app, the one with the highest relevance score shows in the Dynamic Island. If the scores are equal, the system shows the Live Activity that started first. The score also sets the order of Live Activities on the Lock Screen. Only available on iOS 16.2 and later. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateLiveActivityRequest.new(
  name: nil,
  event: nil,
  event_updates: nil,
  contents: nil,
  headings: nil,
  sound: nil,
  ios_sound: nil,
  stale_date: nil,
  dismissal_date: nil,
  priority: nil,
  ios_relevance_score: nil
)
```

