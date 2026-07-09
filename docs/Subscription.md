# OneSignal::Subscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **notification_types** | **Integer** |  | [optional] |
| **session_time** | **Integer** |  | [optional] |
| **session_count** | **Integer** |  | [optional] |
| **sdk** | **String** |  | [optional] |
| **device_model** | **String** |  | [optional] |
| **device_os** | **String** |  | [optional] |
| **rooted** | **Boolean** |  | [optional] |
| **test_type** | **Integer** |  | [optional] |
| **app_version** | **String** |  | [optional] |
| **net_type** | **Integer** |  | [optional] |
| **carrier** | **String** |  | [optional] |
| **web_auth** | **String** |  | [optional] |
| **web_p256** | **String** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::Subscription.new(
  id: 'e4e87830-b954-4363-b7bc-1f01dbaee5c8',
  type: nil,
  token: 'd5d4d1a8-1c9e-42fb-b3f2-56d3a5a9a8b7',
  enabled: true,
  notification_types: 1,
  session_time: 60,
  session_count: 1,
  sdk: '5.2.0',
  device_model: 'iPhone14,2',
  device_os: '17.1',
  rooted: nil,
  test_type: nil,
  app_version: '1.0.0',
  net_type: nil,
  carrier: 'Verizon',
  web_auth: '5DUmpGmLuTxWCLj5lJpwLQ',
  web_p256: 'BM5-r8DauQXOb2E-3PgLPjSvjT0Ao9v5oJhw8bZ0cW7Vh6BbmPYcqbbCEJ1P2sK0hZ7HxSh9zGyU5pQk1jJmZ8A'
)
```

