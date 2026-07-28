# OneSignal::AuditLogTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID of the resource. | [optional] |
| **metadata** | **Object** | Additional resource-specific data. | [optional] |
| **name** | **String** | Display name of the resource. Absent if unavailable. | [optional] |
| **type** | **String** | Resource type (e.g. notification, segment, journey, app). | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::AuditLogTarget.new(
  id: nil,
  metadata: nil,
  name: nil,
  type: nil
)
```

