# OneSignal::EmailMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | The number of emails sent. | [optional] |
| **delivered** | **Integer** | The number of emails successfully delivered. | [optional] |
| **opened** | **Integer** | The total number of email opens, including repeat opens by the same recipient. | [optional] |
| **clicked** | **Integer** | The total number of email link clicks, including repeat clicks by the same recipient. | [optional] |
| **unique_opened** | **Integer** | The number of emails opened at least once. | [optional] |
| **unique_clicked** | **Integer** | The number of emails with at least one link click. | [optional] |
| **failed** | **Integer** | The number of emails that failed to send. | [optional] |
| **bounced** | **Integer** | The number of emails that bounced. | [optional] |
| **complained** | **Integer** | The number of emails that recipients reported as spam. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EmailMetrics.new(
  sent: 100,
  delivered: 95,
  opened: 40,
  clicked: 10,
  unique_opened: 35,
  unique_clicked: 8,
  failed: 5,
  bounced: 3,
  complained: 1
)
```

