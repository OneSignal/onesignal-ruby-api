# OneSignal::InvalidIdentifierError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invalid_external_user_ids** | **Array&lt;String&gt;** | Returned if using include_external_user_ids | [optional] |
| **invalid_player_ids** | **Array&lt;String&gt;** | Returned if using include_player_ids and some were valid and others were not. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::InvalidIdentifierError.new(
  invalid_external_user_ids: null,
  invalid_player_ids: null
)
```

