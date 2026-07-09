# OneSignal::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**PropertiesObject**](PropertiesObject.md) |  | [optional] |
| **identity** | **Hash&lt;String, String&gt;** |  | [optional] |
| **subscriptions** | [**Array&lt;Subscription&gt;**](Subscription.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::User.new(
  properties: nil,
  identity: {"external_id":"YOUR_USER_EXTERNAL_ID"},
  subscriptions: nil
)
```

