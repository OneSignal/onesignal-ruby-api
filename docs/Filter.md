# OneSignal::Filter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | Name of the field to use as the first operand in the filter expression. |  |
| **key** | **String** | If &#x60;field&#x60; is &#x60;tag&#x60;, this field is *required* to specify &#x60;key&#x60; inside the tags. | [optional] |
| **value** | **String** | Constant value to use as the second operand in the filter expression.  This value is *required* when the relation operator is a binary operator. | [optional] |
| **relation** | **String** | Operator of a filter expression. |  |

## Example

```ruby
require 'onesignal'

instance = OneSignal::Filter.new(
  field: null,
  key: null,
  value: null,
  relation: null
)
```

