# OneSignal::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**PropertiesObject**](PropertiesObject.md) |  | [optional] |
| **identity** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **subscriptions** | [**Array&lt;SubscriptionObject&gt;**](SubscriptionObject.md) |  | [optional] |
| **subscription_options** | [**UserSubscriptionOptions**](UserSubscriptionOptions.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::User.new(
  properties: null,
  identity: null,
  subscriptions: null,
  subscription_options: null
)
```

