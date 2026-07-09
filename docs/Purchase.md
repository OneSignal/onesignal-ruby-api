# OneSignal::Purchase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The unique identifier of the purchased item. |  |
| **amount** | **String** | The amount, in USD, spent purchasing the item. |  |
| **iso** | **String** | The 3-letter ISO 4217 currency code. Required for correct storage and conversion of amount. |  |
| **count** | **Integer** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::Purchase.new(
  sku: 'com.example.coins100',
  amount: '0.99',
  iso: 'USD',
  count: nil
)
```

