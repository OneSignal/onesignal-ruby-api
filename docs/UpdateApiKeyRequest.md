# OneSignal::UpdateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **ip_allowlist_mode** | **String** |  | [optional] |
| **ip_allowlist** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateApiKeyRequest.new(
  name: nil,
  ip_allowlist_mode: nil,
  ip_allowlist: nil
)
```

