# OneSignal::ListAuditLogsSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audit_logs** | [**Array&lt;AuditLogEvent&gt;**](AuditLogEvent.md) | Array of audit log events, ordered by occurred_at ascending. | [optional] |
| **has_more** | **Boolean** | True if additional events exist beyond this page. Use next_cursor to fetch the next page. | [optional] |
| **next_cursor** | **String** | Opaque cursor to pass as cursor in the next request. Only present when has_more is true. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::ListAuditLogsSuccessResponse.new(
  audit_logs: nil,
  has_more: nil,
  next_cursor: nil
)
```

