# OneSignal::AuditLogActor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the actor. Absent if unavailable. | [optional] |
| **id** | **String** | UUID of the actor. | [optional] |
| **metadata** | **Object** | Additional actor-specific data. | [optional] |
| **name** | **String** | Display name of the actor. Absent if unavailable. | [optional] |
| **type** | **String** | Actor type (e.g. member, api_key, system). | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::AuditLogActor.new(
  email: nil,
  id: nil,
  metadata: nil,
  name: nil,
  type: nil
)
```

