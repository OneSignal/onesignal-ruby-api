# OneSignal::UserIdentityBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UserIdentityBody.new(
  identity: {"external_id":"YOUR_USER_EXTERNAL_ID"}
)
```

