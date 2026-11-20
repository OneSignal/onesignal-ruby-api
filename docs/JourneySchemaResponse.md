# OneSignal::JourneySchemaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | The requested operation. |  |
| **document** | **String** | The document that the schema describes. For update_node, merged_node is the complete node after applying the patch. |  |
| **schema** | **Hash&lt;String, Object&gt;** | A self-contained JSON Schema Draft 6 document with local $defs references. |  |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneySchemaResponse.new(
  operation: nil,
  document: nil,
  schema: nil
)
```

