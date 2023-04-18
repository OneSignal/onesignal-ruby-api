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
| **first_active** | **Float** |  | [optional] |
| **last_active** | **Float** |  | [optional] |
| **amount_spent** | **Float** |  | [optional] |
| **purchases** | [**Array&lt;Purchase&gt;**](Purchase.md) |  | [optional] |
| **ip** | **String** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::PropertiesObject.new(
  tags: null,
  language: null,
  timezone_id: null,
  lat: null,
  long: null,
  country: null,
  first_active: null,
  last_active: null,
  amount_spent: null,
  purchases: null,
  ip: null
)
```

