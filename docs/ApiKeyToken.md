# OneSignal::ApiKeyToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_id** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **ip_allowlist_mode** | **String** |  | [optional] |
| **ip_allowlist** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::ApiKeyToken.new(
  token_id: nil,
  updated_at: nil,
  created_at: nil,
  name: nil,
  ip_allowlist_mode: nil,
  ip_allowlist: nil
)
```

