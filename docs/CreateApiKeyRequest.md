# OneSignal::CreateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **ip_allowlist_mode** | **String** |  | [optional] |
| **ip_allowlist** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateApiKeyRequest.new(
  name: null,
  ip_allowlist_mode: null,
  ip_allowlist: null
)
```

