# OneSignal::Notification200Errors

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'onesignal'

OneSignal::Notification200Errors.openapi_one_of
# =>
# [
#   :'Array<String>',
#   :'InvalidIdentifierError'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'onesignal'

OneSignal::Notification200Errors.build(data)
# => #<Array<String>:0x00007fdd4aab02a0>

OneSignal::Notification200Errors.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<String>`
- `InvalidIdentifierError`
- `nil` (if no type matches)

