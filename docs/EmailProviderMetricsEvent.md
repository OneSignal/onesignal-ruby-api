# OneSignal::EmailProviderMetricsEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | The start of the time bucket, aligned to the hour, day, or month in UTC. | [optional] |
| **metrics** | [**EmailMetrics**](EmailMetrics.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EmailProviderMetricsEvent.new(
  date: 2026-08-01T00:00Z,
  metrics: nil
)
```

