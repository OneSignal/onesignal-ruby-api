# OneSignal::AuditLogContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | Country code derived from the request IP. | [optional] |
| **ip** | **String** | IP address the request originated from. | [optional] |
| **metadata** | **Object** | Additional context-specific data. | [optional] |
| **user_agent** | **String** | User agent of the client that made the request. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::AuditLogContext.new(
  country: nil,
  ip: nil,
  metadata: nil,
  user_agent: nil
)
```

