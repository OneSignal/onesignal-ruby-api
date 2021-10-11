# OneSignal::FilterExpressions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | Name of the field to use as the first operand in the filter expression. |  |
| **key** | **String** | If &#x60;field&#x60; is &#x60;tag&#x60;, this field is *required* to specify &#x60;key&#x60; inside the tags. | [optional] |
| **value** | **String** | Constant value to use as the second operand in the filter expression.  This value is *required* when the relation operator is a binary operator. | [optional] |
| **relation** | **String** | Operator of a filter expression. |  |
| **operator** | **String** | Strictly, this must be either &#x60;\&quot;OR\&quot;&#x60;, or &#x60;\&quot;AND\&quot;&#x60;.  It can be used to compose Filters as part of a Filters object. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::FilterExpressions.new(
  field: null,
  key: null,
  value: null,
  relation: null,
  operator: null
)
```

