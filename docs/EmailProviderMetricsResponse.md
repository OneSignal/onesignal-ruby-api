# OneSignal::EmailProviderMetricsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **providers** | [**Array&lt;EmailProviderMetrics&gt;**](EmailProviderMetrics.md) | One entry per inbox provider that received email from the domain during the reporting window. Empty when the domain is not found for the app or is not currently active for sending. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::EmailProviderMetricsResponse.new(
  providers: nil
)
```

