# OneSignal::JourneyValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Stable, kebab-case error identifier. Always &#x60;invalid-payload&#x60; for validation failures. | [optional] |
| **title** | **String** | Human-readable message. Wording may change between releases. | [optional] |
| **meta** | **Hash&lt;String, Object&gt;** | Structured context. Always includes &#x60;attribute&#x60; (the field, or &#x60;base&#x60; for request-level errors); may also include &#x60;path&#x60;, &#x60;node_id&#x60;, or &#x60;client_node_id&#x60;. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyValidationError.new(
  code: nil,
  title: nil,
  meta: nil
)
```

