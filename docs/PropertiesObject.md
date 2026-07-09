# OneSignal::PropertiesObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **language** | **String** |  | [optional] |
| **timezone_id** | **String** |  | [optional] |
| **lat** | **Float** |  | [optional] |
| **long** | **Float** |  | [optional] |
| **country** | **String** |  | [optional] |
| **first_active** | **Integer** |  | [optional] |
| **last_active** | **Integer** |  | [optional] |
| **amount_spent** | **Float** |  | [optional] |
| **purchases** | [**Array&lt;Purchase&gt;**](Purchase.md) |  | [optional] |
| **ip** | **String** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::PropertiesObject.new(
  tags: {"level":"10","vip":"true"},
  language: 'en',
  timezone_id: 'America/Los_Angeles',
  lat: nil,
  long: nil,
  country: 'US',
  first_active: nil,
  last_active: nil,
  amount_spent: nil,
  purchases: nil,
  ip: '203.0.113.10'
)
```

