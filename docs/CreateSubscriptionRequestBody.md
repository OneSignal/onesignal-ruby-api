# OneSignal::CreateSubscriptionRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription** | [**SubscriptionObject**](SubscriptionObject.md) |  | [optional] |
| **retain_previous_owner** | **Boolean** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateSubscriptionRequestBody.new(
  subscription: null,
  retain_previous_owner: null
)
```

