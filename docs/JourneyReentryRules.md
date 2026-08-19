# OneSignal::JourneyReentryRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_seconds** | **Integer** | Minimum seconds before a user can re-enter. Must be at least 600 (10 minutes). | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyReentryRules.new(
  duration_seconds: nil
)
```

