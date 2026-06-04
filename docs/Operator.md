# OneSignal::Operator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator** | **String** | Strictly, this must be either &#x60;\&quot;OR\&quot;&#x60;, or &#x60;\&quot;AND\&quot;&#x60;.  It can be used to compose Filters as part of a Filters object. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::Operator.new(
  operator: null
)
```

