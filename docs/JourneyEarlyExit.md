# OneSignal::JourneyEarlyExit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**JourneyEarlyExitRules**](JourneyEarlyExitRules.md) |  | [optional] |
| **tag_on_early_exit** | **Hash&lt;String, String&gt;** | Tag key-value pairs applied when a user exits early. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyEarlyExit.new(
  rules: nil,
  tag_on_early_exit: nil
)
```

