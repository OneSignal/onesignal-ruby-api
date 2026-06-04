# OneSignal::FilterExpression

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'onesignal'

OneSignal::FilterExpression.openapi_one_of
# =>
# [
#   :'Filter',
#   :'Operator'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'onesignal'

OneSignal::FilterExpression.build(data)
# => #<Filter:0x00007fdd4aab02a0>

OneSignal::FilterExpression.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Filter`
- `Operator`
- `nil` (if no type matches)

