# OneSignal::PlatformDeliveryDataEmailAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opened** | **Integer** | Number of times an email has been opened. | [optional] |
| **unique_opens** | **Integer** | Number of unique recipients who have opened your email. | [optional] |
| **clicks** | **Integer** | Number of clicked links from your email. This can include the recipient clicking email links multiple times. | [optional] |
| **unique_clicks** | **Integer** | Number of unique clicks that your recipients have made on links from your email. | [optional] |
| **bounced** | **Integer** | Number of recipients who registered as a hard or soft bounce and didn&#39;t receive your email. | [optional] |
| **reported_spam** | **Integer** | Number of recipients who reported this email as spam. | [optional] |
| **unsubscribed** | **Integer** | Number of recipients who opted out of your emails using the unsubscribe link in this email. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::PlatformDeliveryDataEmailAllOf.new(
  opened: null,
  unique_opens: null,
  clicks: null,
  unique_clicks: null,
  bounced: null,
  reported_spam: null,
  unsubscribed: null
)
```

