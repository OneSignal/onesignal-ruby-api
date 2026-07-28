# OneSignal::DefaultApi

All URIs are relative to *https://api.onesignal.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_notification**](DefaultApi.md#cancel_notification) | **DELETE** /notifications/{notification_id} | Stop a scheduled or currently outgoing notification |
| [**copy_template_to_app**](DefaultApi.md#copy_template_to_app) | **POST** /templates/{template_id}/copy_to_app | Copy template to another app |
| [**create_alias**](DefaultApi.md#create_alias) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity |  |
| [**create_alias_by_subscription**](DefaultApi.md#create_alias_by_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/user/identity |  |
| [**create_api_key**](DefaultApi.md#create_api_key) | **POST** /apps/{app_id}/auth/tokens | Create API key |
| [**create_app**](DefaultApi.md#create_app) | **POST** /apps | Create an app |
| [**create_custom_events**](DefaultApi.md#create_custom_events) | **POST** /apps/{app_id}/integrations/custom_events | Create custom events |
| [**create_notification**](DefaultApi.md#create_notification) | **POST** /notifications | Create notification |
| [**create_segment**](DefaultApi.md#create_segment) | **POST** /apps/{app_id}/segments | Create Segment |
| [**create_subscription**](DefaultApi.md#create_subscription) | **POST** /apps/{app_id}/users/by/{alias_label}/{alias_id}/subscriptions |  |
| [**create_template**](DefaultApi.md#create_template) | **POST** /templates | Create template |
| [**create_user**](DefaultApi.md#create_user) | **POST** /apps/{app_id}/users |  |
| [**delete_alias**](DefaultApi.md#delete_alias) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity/{alias_label_to_delete} |  |
| [**delete_api_key**](DefaultApi.md#delete_api_key) | **DELETE** /apps/{app_id}/auth/tokens/{token_id} | Delete API key |
| [**delete_segment**](DefaultApi.md#delete_segment) | **DELETE** /apps/{app_id}/segments/{segment_id} | Delete Segment |
| [**delete_subscription**](DefaultApi.md#delete_subscription) | **DELETE** /apps/{app_id}/subscriptions/{subscription_id} |  |
| [**delete_template**](DefaultApi.md#delete_template) | **DELETE** /templates/{template_id} | Delete template |
| [**delete_user**](DefaultApi.md#delete_user) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |
| [**export_events**](DefaultApi.md#export_events) | **POST** /notifications/{notification_id}/export_events?app_id&#x3D;{app_id} | Export CSV of Events |
| [**export_subscriptions**](DefaultApi.md#export_subscriptions) | **POST** /players/csv_export?app_id&#x3D;{app_id} | Export CSV of Subscriptions |
| [**get_aliases**](DefaultApi.md#get_aliases) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity |  |
| [**get_aliases_by_subscription**](DefaultApi.md#get_aliases_by_subscription) | **GET** /apps/{app_id}/subscriptions/{subscription_id}/user/identity |  |
| [**get_app**](DefaultApi.md#get_app) | **GET** /apps/{app_id} | View an app |
| [**get_apps**](DefaultApi.md#get_apps) | **GET** /apps | View apps |
| [**get_notification**](DefaultApi.md#get_notification) | **GET** /notifications/{notification_id} | View notification |
| [**get_notification_history**](DefaultApi.md#get_notification_history) | **POST** /notifications/{notification_id}/history | Notification History |
| [**get_notifications**](DefaultApi.md#get_notifications) | **GET** /notifications | View notifications |
| [**get_outcomes**](DefaultApi.md#get_outcomes) | **GET** /apps/{app_id}/outcomes | View Outcomes |
| [**get_segment**](DefaultApi.md#get_segment) | **GET** /apps/{app_id}/segments/{segment_id} | View Segment |
| [**get_segments**](DefaultApi.md#get_segments) | **GET** /apps/{app_id}/segments | Get Segments |
| [**get_user**](DefaultApi.md#get_user) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |
| [**list_audit_logs**](DefaultApi.md#list_audit_logs) | **GET** /organizations/{organization_id}/audit_logs | List audit logs |
| [**rotate_api_key**](DefaultApi.md#rotate_api_key) | **POST** /apps/{app_id}/auth/tokens/{token_id}/rotate | Rotate API key |
| [**start_live_activity**](DefaultApi.md#start_live_activity) | **POST** /apps/{app_id}/activities/activity/{activity_type} | Start Live Activity |
| [**transfer_subscription**](DefaultApi.md#transfer_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/owner |  |
| [**unsubscribe_email_with_token**](DefaultApi.md#unsubscribe_email_with_token) | **POST** /apps/{app_id}/notifications/{notification_id}/unsubscribe | Unsubscribe with token |
| [**update_api_key**](DefaultApi.md#update_api_key) | **PATCH** /apps/{app_id}/auth/tokens/{token_id} | Update API key |
| [**update_app**](DefaultApi.md#update_app) | **PUT** /apps/{app_id} | Update an app |
| [**update_live_activity**](DefaultApi.md#update_live_activity) | **POST** /apps/{app_id}/live_activities/{activity_id}/notifications | Update a Live Activity via Push |
| [**update_segment**](DefaultApi.md#update_segment) | **PATCH** /apps/{app_id}/segments/{segment_id} | Update Segment |
| [**update_subscription**](DefaultApi.md#update_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id} |  |
| [**update_subscription_by_token**](DefaultApi.md#update_subscription_by_token) | **PATCH** /apps/{app_id}/subscriptions_by_token/{token_type}/{token} | Update subscription by token |
| [**update_template**](DefaultApi.md#update_template) | **PATCH** /templates/{template_id} | Update template |
| [**update_user**](DefaultApi.md#update_user) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |
| [**view_api_keys**](DefaultApi.md#view_api_keys) | **GET** /apps/{app_id}/auth/tokens | View API keys |
| [**view_template**](DefaultApi.md#view_template) | **GET** /templates/{template_id} | View template |
| [**view_templates**](DefaultApi.md#view_templates) | **GET** /templates | View templates |

## Common patterns

The per-endpoint examples below illustrate one specific call each. This section covers patterns that apply to most operations.

### Authentication

Every operation requires either a **REST API Key** (App-scoped, used by ~77% of endpoints) or an **Organization API Key** (used by the remaining ~23% — the app-management endpoints `get_apps` / `create_app` / `get_app` / `update_app` / `copy_template_to_app`, plus the API-key administration endpoints `view_api_keys` / `create_api_key` / `delete_api_key` / `update_api_key` / `rotate_api_key`). The two are not interchangeable. The "Authorization" row on each endpoint below lists the exact scheme.

### Idempotency

`POST /notifications` accepts a top-level `idempotency_key` (UUIDv4) that the server uses for request dedup within a **30-day window**. Pass a freshly-generated UUID per logical send so that network-level retries are safe. Never reuse a key across distinct sends — the server returns the original response instead of acting on the new payload. The hero `create_notification` example below demonstrates the call.

Prefer the bundled `create_notification_with_retry` helper over wiring this up by hand: it generates the key when absent (a caller-provided key is respected), retries 429 / 503 / connection errors with the **same** key (honoring `Retry-After`, exponential backoff otherwise; `max_retries` / `base_delay` configurable), fails fast on other errors, and reports via `was_replayed` whether the server answered from a previously completed request (`Idempotent-Replayed` response header). It is available as a `DefaultApi` method so the call mirrors `create_notification`:

```ruby
result = api_instance.create_notification_with_retry(notification)
puts "#{result.response.id} replayed=#{result.was_replayed}"
```

### Error handling

When a request fails, the SDK raises `OneSignal::ApiError`. The HTTP status code is `e.code` (Integer); the parsed error body is `e.response_body` (String — the raw JSON envelope). Response headers are available via `e.response_headers`. Most envelopes match `{ "errors": ["..."] }` (an array of strings) but a few endpoints return `{ "errors": [{"code": ..., "title": ..., "meta": {...}}] }` (an array of structured error objects — used by `POST /apps/{app_id}/users` 409 conflict, see `CreateUserConflictResponse`), `{ "errors": "..." }` (string), or `{ "success": false }` (no `errors` field at all). Robust error-handling code should tolerate all four shapes. The `e.error_messages` method does this for you, normalizing every shape to a flat `Array<String>` (empty when the body carries no `errors`). To branch on a specific error without hard-coding message strings, test membership against the generated [`OneSignal::Errors`](https://github.com/OneSignal/onesignal-ruby-api/blob/master/lib/onesignal/errors.rb) catalog — e.g. `e.error_messages.include?(OneSignal::Errors::NO_TARGETING_SPECIFIED)`.

### Polymorphic 200 from POST /notifications

`CreateNotificationSuccessResponse` has two distinct shapes that share the same schema; branch on `id`:
- **Success** — `id` is a non-empty UUID. `errors`, if present, is an object keyed by recipient-identifier type (`invalid_player_ids`, `invalid_external_user_ids`, `invalid_aliases`, ...) listing recipients that were skipped (partial-success path).
- **No-send** — `id` is the empty string `""`. `errors` is a string array with the sentinel reason, typically `["All included players are not subscribed"]`.

The hero `create_notification` example below demonstrates the branch pattern explicitly.

### Targeting users by External ID

Set `include_aliases.external_id` to a list of External IDs and set `target_channel` to `push` / `email` / `sms`. The alias label must be the literal string `external_id` — camelCase variants such as `externalId` are silently ignored and yield zero recipients. **Do not confuse** this with the deprecated top-level `external_id` notification field — a separate correlation/idempotency field with its own 30-day dedup keyspace (parallel to `idempotency_key`, not an alias) and no targeting effect.


## cancel_notification

> <GenericSuccessBoolResponse> cancel_notification(app_id, notification_id)

Stop a scheduled or currently outgoing notification

Used to stop a scheduled or currently outgoing notification

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
notification_id = 'b3a0c8bd-3a4c-4b22-9a73-3f1a8c2d1b88' # String | 

begin
  # Stop a scheduled or currently outgoing notification
  result = api_instance.cancel_notification(app_id, notification_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->cancel_notification: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the cancel_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericSuccessBoolResponse>, Integer, Hash)> cancel_notification_with_http_info(app_id, notification_id)

```ruby
begin
  # Stop a scheduled or currently outgoing notification
  data, status_code, headers = api_instance.cancel_notification_with_http_info(app_id, notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericSuccessBoolResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->cancel_notification_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **notification_id** | **String** |  |  |

### Return type

[**GenericSuccessBoolResponse**](GenericSuccessBoolResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## copy_template_to_app

> <TemplateResource> copy_template_to_app(template_id, app_id, copy_template_request)

Copy template to another app

Copy a template to a destination app.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
template_id = 'e4d3c2b1-a09f-4f1e-8d7c-6b5a4f3e2d1c' # String | 
app_id = 'YOUR_APP_ID' # String | 
copy_template_request = OneSignal::CopyTemplateRequest.new({target_app_id: 'target_app_id_example'}) # CopyTemplateRequest | 

begin
  # Copy template to another app
  result = api_instance.copy_template_to_app(template_id, app_id, copy_template_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->copy_template_to_app: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the copy_template_to_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResource>, Integer, Hash)> copy_template_to_app_with_http_info(template_id, app_id, copy_template_request)

```ruby
begin
  # Copy template to another app
  data, status_code, headers = api_instance.copy_template_to_app_with_http_info(template_id, app_id, copy_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResource>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->copy_template_to_app_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **app_id** | **String** |  |  |
| **copy_template_request** | [**CopyTemplateRequest**](CopyTemplateRequest.md) |  |  |

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_alias

> <UserIdentityBody> create_alias(app_id, alias_label, alias_id, user_identity_body)



Upserts one or more Aliases to an existing User identified by (:alias_label, :alias_id).

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 
user_identity_body = OneSignal::UserIdentityBody.new # UserIdentityBody | 

begin
  
  result = api_instance.create_alias(app_id, alias_label, alias_id, user_identity_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_alias: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityBody>, Integer, Hash)> create_alias_with_http_info(app_id, alias_label, alias_id, user_identity_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_alias_with_http_info(app_id, alias_label, alias_id, user_identity_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_alias_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |
| **user_identity_body** | [**UserIdentityBody**](UserIdentityBody.md) |  |  |

### Return type

[**UserIdentityBody**](UserIdentityBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_alias_by_subscription

> <UserIdentityBody> create_alias_by_subscription(app_id, subscription_id, user_identity_body)



Upserts one or more Aliases for the User identified by :subscription_id.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
subscription_id = '7e4c5b9a-1f60-4d07-9b1a-2e8c8d2cae51' # String | 
user_identity_body = OneSignal::UserIdentityBody.new # UserIdentityBody | 

begin
  
  result = api_instance.create_alias_by_subscription(app_id, subscription_id, user_identity_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_alias_by_subscription: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_alias_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityBody>, Integer, Hash)> create_alias_by_subscription_with_http_info(app_id, subscription_id, user_identity_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_alias_by_subscription_with_http_info(app_id, subscription_id, user_identity_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_alias_by_subscription_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |
| **user_identity_body** | [**UserIdentityBody**](UserIdentityBody.md) |  |  |

### Return type

[**UserIdentityBody**](UserIdentityBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_api_key

> <CreateApiKeyResponse> create_api_key(app_id, create_api_key_request)

Create API key

Use this API to create a new App API Key (also called a Rich Authentication Token) for a specific OneSignal app. These keys are used to authenticate API requests at the app level and offer enhanced security features, including optional IP allowlisting.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
create_api_key_request = OneSignal::CreateApiKeyRequest.new # CreateApiKeyRequest | 

begin
  # Create API key
  result = api_instance.create_api_key(app_id, create_api_key_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_api_key: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateApiKeyResponse>, Integer, Hash)> create_api_key_with_http_info(app_id, create_api_key_request)

```ruby
begin
  # Create API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(app_id, create_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateApiKeyResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_api_key_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **create_api_key_request** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md) |  |  |

### Return type

[**CreateApiKeyResponse**](CreateApiKeyResponse.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_app

> <App> create_app(app)

Create an app

Creates a new OneSignal app

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app = OneSignal::App.new # App | 

begin
  # Create an app
  result = api_instance.create_app(app)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_app: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> create_app_with_http_info(app)

```ruby
begin
  # Create an app
  data, status_code, headers = api_instance.create_app_with_http_info(app)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_app_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app** | [**App**](App.md) |  |  |

### Return type

[**App**](App.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_custom_events

> Object create_custom_events(app_id, custom_events_request)

Create custom events

The Custom Events API allows you to record user events. Custom events can represent any action users take in your application, such as completing a purchase, viewing content, or achieving milestones.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | Your OneSignal App ID in UUID v4 format.
custom_events_request = OneSignal::CustomEventsRequest.new({events: [OneSignal::CustomEvent.new({name: 'name_example'})]}) # CustomEventsRequest | 

begin
  # Create custom events
  result = api_instance.create_custom_events(app_id, custom_events_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_custom_events: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_custom_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_custom_events_with_http_info(app_id, custom_events_request)

```ruby
begin
  # Create custom events
  data, status_code, headers = api_instance.create_custom_events_with_http_info(app_id, custom_events_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_custom_events_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Your OneSignal App ID in UUID v4 format. |  |
| **custom_events_request** | [**CustomEventsRequest**](CustomEventsRequest.md) |  |  |

### Return type

**Object**

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_notification

> <CreateNotificationSuccessResponse> create_notification(notification)

Create notification

Sends notifications to your users.  **Target by External ID (push example):** set `include_aliases` to `{ \"external_id\": [\"your-user-id\"] }` and set `target_channel` to `push` (or `email` / `sms` for those channels). Alias object keys must match API labels exactly (for example `external_id`, not camelCase).  **Do not confuse** the notification-level `external_id` field with External ID targeting: top-level `external_id` / `idempotency_key` are for idempotent notification requests only, not for selecting recipients.  **Targeting compatibility:** `include_aliases` must not be combined with other targeting modes (segments, filters, subscription IDs, legacy player IDs, etc.). Clients should send only one targeting strategy per request. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
require 'securerandom'

notification = OneSignal::Notification.new
notification.app_id = 'YOUR_APP_ID'
notification.contents = OneSignal::LanguageStringMap.new({ en: 'Hello from OneSignal!' })
notification.headings = OneSignal::LanguageStringMap.new({ en: 'Push Notification' })
notification.include_aliases = { 'external_id' => ['YOUR_USER_EXTERNAL_ID'] }
notification.target_channel = 'push'
# Idempotency key: a client-generated UUID that lets you safely retry on network failure.
# If two requests arrive with the same key inside the 30-day window, only the first is sent
# and the second returns the original response. Use SecureRandom.uuid — DO NOT reuse keys
# across logically distinct sends.
notification.idempotency_key = SecureRandom.uuid

begin
  # Create notification
  result = api_instance.create_notification(notification)
  # `result.id` discriminates the two HTTP 200 shapes. An empty string means no
  # notification was created (e.g. all targets were unreachable / not subscribed).
  # `result.errors` is polymorphic: an `Array<String>` in the no-subscribers case, or
  # a Hash keyed by recipient-identifier type (`invalid_player_ids`,
  # `invalid_external_user_ids`, `invalid_aliases`, ...) when the notification WAS
  # created but some recipients were skipped.
  if result.id.to_s.empty?
    puts "Notification was not sent: #{result.errors}"
  elsif result.errors
    puts "Notification created: #{result.id} (partial failures: #{result.errors})"
  else
    puts "Notification created: #{result.id}"
  end
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_notification: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using `create_notification_with_retry` (preferred for safe, idempotent retries)

The `create_notification_with_retry` method mirrors `create_notification` but generates the `idempotency_key` for you, transparently retries transient failures (HTTP 429 / 503 / connection errors) with the **same** key, and reports via `was_replayed` whether the server answered from a previously-completed request.

```ruby
require 'onesignal'

OneSignal.configure do |config|
  config.rest_api_key = 'YOUR_REST_API_KEY'
end

api_instance = OneSignal::DefaultApi.new
notification = OneSignal::Notification.new
notification.app_id = 'YOUR_APP_ID'
notification.contents = OneSignal::LanguageStringMap.new({ en: 'Hello from OneSignal!' })
notification.headings = OneSignal::LanguageStringMap.new({ en: 'Push Notification' })
notification.include_aliases = { 'external_id' => ['YOUR_USER_EXTERNAL_ID'] }
notification.target_channel = 'push'
# No idempotency_key set: the helper generates a UUIDv4 and reuses it across retries.

begin
  # max_retries / base_delay are optional (defaults: 3 retries, 1.0s backoff base).
  result = api_instance.create_notification_with_retry(notification, max_retries: 5, base_delay: 0.5)
  if result.was_replayed
    puts "Server replayed a prior send (no duplicate): #{result.response.id}"
  else
    puts "Notification created: #{result.response.id}"
  end
rescue OneSignal::ApiError => e
  # `e.error_messages` flattens any error-envelope shape to an Array<String>.
  puts "create_notification_with_retry failed: HTTP #{e.code} #{e.error_messages}"
end
```

#### Using the create_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNotificationSuccessResponse>, Integer, Hash)> create_notification_with_http_info(notification)

```ruby
begin
  # Create notification
  data, status_code, headers = api_instance.create_notification_with_http_info(notification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNotificationSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_notification_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notification** | [**Notification**](Notification.md) |  |  |

### Return type

[**CreateNotificationSuccessResponse**](CreateNotificationSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_segment

> <CreateSegmentSuccessResponse> create_segment(app_id, opts)

Create Segment

Create a segment visible and usable in the dashboard and API - Required: OneSignal Paid Plan The Create Segment method is used when you want your server to programmatically create a segment instead of using the OneSignal Dashboard UI. Just like creating Segments from the dashboard you can pass in filters with multiple \"AND\" or \"OR\" operator's. &#x1F6A7; Does Not Update Segments This endpoint will only create segments, it does not edit or update currently created Segments. You will need to use the Delete Segment endpoint and re-create it with this endpoint to edit. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
opts = {
  segment: OneSignal::Segment.new({name: 'Inactive 30 days', filters: [OneSignal::Filter.new]}) # Segment | 
}

begin
  # Create Segment
  result = api_instance.create_segment(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_segment: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSegmentSuccessResponse>, Integer, Hash)> create_segment_with_http_info(app_id, opts)

```ruby
begin
  # Create Segment
  data, status_code, headers = api_instance.create_segment_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSegmentSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_segment_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **segment** | [**Segment**](Segment.md) |  | [optional] |

### Return type

[**CreateSegmentSuccessResponse**](CreateSegmentSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_subscription

> <SubscriptionBody> create_subscription(app_id, alias_label, alias_id, subscription_body)



Creates a new Subscription under the User provided. Useful to add email addresses and SMS numbers to the User.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 
subscription_body = OneSignal::SubscriptionBody.new # SubscriptionBody | 

begin
  
  result = api_instance.create_subscription(app_id, alias_label, alias_id, subscription_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_subscription: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionBody>, Integer, Hash)> create_subscription_with_http_info(app_id, alias_label, alias_id, subscription_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_subscription_with_http_info(app_id, alias_label, alias_id, subscription_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_subscription_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |
| **subscription_body** | [**SubscriptionBody**](SubscriptionBody.md) |  |  |

### Return type

[**SubscriptionBody**](SubscriptionBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_template

> <TemplateResource> create_template(create_template_request)

Create template

Create reusable message templates for push, email, and SMS channels.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
create_template_request = OneSignal::CreateTemplateRequest.new({app_id: 'app_id_example', name: 'name_example', contents: OneSignal::LanguageStringMap.new}) # CreateTemplateRequest | 

begin
  # Create template
  result = api_instance.create_template(create_template_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_template: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResource>, Integer, Hash)> create_template_with_http_info(create_template_request)

```ruby
begin
  # Create template
  data, status_code, headers = api_instance.create_template_with_http_info(create_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResource>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_template_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_template_request** | [**CreateTemplateRequest**](CreateTemplateRequest.md) |  |  |

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> <User> create_user(app_id, user)



Creates a User, optionally Subscriptions owned by the User as well as Aliases. Aliases provided in the payload will be used to look up an existing User.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
user = OneSignal::User.new # User | 

begin
  
  result = api_instance.create_user(app_id, user)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_user: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_user_with_http_info(app_id, user)

```ruby
begin
  
  data, status_code, headers = api_instance.create_user_with_http_info(app_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_user_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Reading the 409 conflict metadata

A `409` from this endpoint returns a `CreateUserConflictResponse` envelope. The `e.error_messages` method flattens each error to its `title`/`code` and omits the structured `meta` object (currently `conflicting_aliases`); parse it from the raw body when you need it:

```ruby
if e.code == 409
  JSON.parse(e.response_body)['errors'].each do |err|
    puts "#{err['title']} #{err.dig('meta', 'conflicting_aliases')}"
  end
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **user** | [**User**](User.md) |  |  |

### Return type

[**User**](User.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_alias

> <UserIdentityBody> delete_alias(app_id, alias_label, alias_id, alias_label_to_delete)



Deletes an alias by alias label

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 
alias_label_to_delete = 'external_id' # String | 

begin
  
  result = api_instance.delete_alias(app_id, alias_label, alias_id, alias_label_to_delete)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_alias: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the delete_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityBody>, Integer, Hash)> delete_alias_with_http_info(app_id, alias_label, alias_id, alias_label_to_delete)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_alias_with_http_info(app_id, alias_label, alias_id, alias_label_to_delete)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_alias_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |
| **alias_label_to_delete** | **String** |  |  |

### Return type

[**UserIdentityBody**](UserIdentityBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_api_key

> Object delete_api_key(app_id, token_id)

Delete API key

Delete a specific Rich Authentication Token (App API Key) for a OneSignal app. Requires your Organization API Key and the token’s unique ID, not the token value itself.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
token_id = '0aa1b2c3-d4e5-46f7-8899-aabbccddeeff' # String | 

begin
  # Delete API key
  result = api_instance.delete_api_key(app_id, token_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_api_key: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_api_key_with_http_info(app_id, token_id)

```ruby
begin
  # Delete API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(app_id, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_api_key_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_segment

> <GenericSuccessBoolResponse> delete_segment(app_id, segment_id)

Delete Segment

Delete a segment (not user devices) - Required: OneSignal Paid Plan You can delete a segment under your app by calling this API. You must provide an API key in the Authorization header that has admin access on the app. The segment_id can be found in the URL of the segment when viewing it in the dashboard. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
segment_id = 'd6c5a3e1-9f17-44a1-9d10-7c0e4a2b1c8e' # String | The segment_id can be found in the URL of the segment when viewing it in the dashboard.

begin
  # Delete Segment
  result = api_instance.delete_segment(app_id, segment_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_segment: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the delete_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericSuccessBoolResponse>, Integer, Hash)> delete_segment_with_http_info(app_id, segment_id)

```ruby
begin
  # Delete Segment
  data, status_code, headers = api_instance.delete_segment_with_http_info(app_id, segment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericSuccessBoolResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_segment_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **segment_id** | **String** | The segment_id can be found in the URL of the segment when viewing it in the dashboard. |  |

### Return type

[**GenericSuccessBoolResponse**](GenericSuccessBoolResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_subscription

> delete_subscription(app_id, subscription_id)



Deletes the Subscription.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
subscription_id = '7e4c5b9a-1f60-4d07-9b1a-2e8c8d2cae51' # String | 

begin
  
  api_instance.delete_subscription(app_id, subscription_id)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_subscription: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the delete_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscription_with_http_info(app_id, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_subscription_with_http_info(app_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_subscription_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_template

> <GenericSuccessBoolResponse> delete_template(template_id, app_id)

Delete template

Delete a template by id.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
template_id = 'e4d3c2b1-a09f-4f1e-8d7c-6b5a4f3e2d1c' # String | 
app_id = 'YOUR_APP_ID' # String | 

begin
  # Delete template
  result = api_instance.delete_template(template_id, app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_template: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the delete_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericSuccessBoolResponse>, Integer, Hash)> delete_template_with_http_info(template_id, app_id)

```ruby
begin
  # Delete template
  data, status_code, headers = api_instance.delete_template_with_http_info(template_id, app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericSuccessBoolResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_template_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **app_id** | **String** |  |  |

### Return type

[**GenericSuccessBoolResponse**](GenericSuccessBoolResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user

> delete_user(app_id, alias_label, alias_id)



Removes the User identified by (:alias_label, :alias_id), and all Subscriptions and Aliases

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 

begin
  
  api_instance.delete_user(app_id, alias_label, alias_id)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_user: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(app_id, alias_label, alias_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_user_with_http_info(app_id, alias_label, alias_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_user_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_events

> <ExportEventsSuccessResponse> export_events(notification_id, app_id)

Export CSV of Events

Generate a compressed CSV report of all of the events data for a notification. This will return a URL immediately upon success but it may take several minutes for the CSV to become available at that URL depending on the volume of data. Only one export can be in-progress per OneSignal account at any given time.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
notification_id = 'b3a0c8bd-3a4c-4b22-9a73-3f1a8c2d1b88' # String | The ID of the notification to export events from.
app_id = 'YOUR_APP_ID' # String | The ID of the app that the notification belongs to.

begin
  # Export CSV of Events
  result = api_instance.export_events(notification_id, app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_events: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the export_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportEventsSuccessResponse>, Integer, Hash)> export_events_with_http_info(notification_id, app_id)

```ruby
begin
  # Export CSV of Events
  data, status_code, headers = api_instance.export_events_with_http_info(notification_id, app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportEventsSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_events_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notification_id** | **String** | The ID of the notification to export events from. |  |
| **app_id** | **String** | The ID of the app that the notification belongs to. |  |

### Return type

[**ExportEventsSuccessResponse**](ExportEventsSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_subscriptions

> <ExportSubscriptionsSuccessResponse> export_subscriptions(app_id, opts)

Export CSV of Subscriptions

Generate a compressed CSV export of all of your current user data This method can be used to generate a compressed CSV export of all of your current user data. It is a much faster alternative than retrieving this data using the /players API endpoint. The file will be compressed using GZip. The file may take several minutes to generate depending on the number of users in your app. The URL generated will be available for 3 days and includes random v4 uuid as part of the resource name to be unguessable. &#x1F6A7; 403 Error Responses          You can test if it is complete by making a GET request to the csv_file_url value. This file may take time to generate depending on how many device records are being pulled. If the file is not ready, a 403 error will be returned. Otherwise the file itself will be returned. &#x1F6A7; Requires Authentication Key Requires your OneSignal App's REST API Key, available in Keys & IDs. &#x1F6A7; Concurrent Exports Only one concurrent export is allowed per OneSignal account. Please ensure you have successfully downloaded the .csv.gz file before exporting another app. CSV File Format: - Default Columns:   | Field | Details |   | --- | --- |   | id | OneSignal Player Id |   | identifier | Push Token |   | session_count | Number of times they visited the app or site   | language | Device language code |   | timezone | Number of seconds away from UTC. Example: -28800 |   | game_version | Version of your mobile app gathered from Android Studio versionCode in your App/build.gradle and iOS uses kCFBundleVersionKey in Xcode. |   | device_os | Device Operating System Version. Example: 80 = Chrome 80, 9 = Android 9 |   | device_type | Device Operating System Type |   | device_model | Device Hardware String Code. Example: Mobile Web Subscribers will have `Linux armv` |   | ad_id | Based on the Google Advertising Id for Android, identifierForVendor for iOS. OptedOut means user turned off Advertising tracking on the device. |   | tags | Current OneSignal Data Tags on the device. |   | last_active | Date and time the user last opened the mobile app or visited the site. |   | playtime | Total amount of time in seconds the user had the mobile app open. |   | amount_spent |  Mobile only - amount spent in USD on In-App Purchases. |    | created_at | Date and time the device record was created in OneSignal. Mobile - first time they opened the app with OneSignal SDK. Web - first time the user subscribed to the site. |   | invalid_identifier | t = unsubscribed, f = subscibed |   | badge_count | Current number of badges on the device | - Extra Columns:   | Field | Details |   | --- | --- |   | external_user_id | Your User Id set on the device |   | notification_types | Notification types |   | location | Location points (Latitude and Longitude) set on the device. |   | country | Country code |   | rooted | Android device rooted or not |   | ip | IP Address of the device if being tracked. See Handling Personal Data. |   | web_auth | Web Only authorization key. |   | web_p256 | Web Only p256 key. | 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The app ID that you want to export devices from
opts = {
  export_subscriptions_request_body: OneSignal::ExportSubscriptionsRequestBody.new # ExportSubscriptionsRequestBody | 
}

begin
  # Export CSV of Subscriptions
  result = api_instance.export_subscriptions(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_subscriptions: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the export_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportSubscriptionsSuccessResponse>, Integer, Hash)> export_subscriptions_with_http_info(app_id, opts)

```ruby
begin
  # Export CSV of Subscriptions
  data, status_code, headers = api_instance.export_subscriptions_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportSubscriptionsSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_subscriptions_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The app ID that you want to export devices from |  |
| **export_subscriptions_request_body** | [**ExportSubscriptionsRequestBody**](ExportSubscriptionsRequestBody.md) |  | [optional] |

### Return type

[**ExportSubscriptionsSuccessResponse**](ExportSubscriptionsSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_aliases

> <UserIdentityBody> get_aliases(app_id, alias_label, alias_id)



Lists all Aliases for the User identified by (:alias_label, :alias_id).

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 

begin
  
  result = api_instance.get_aliases(app_id, alias_label, alias_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_aliases: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityBody>, Integer, Hash)> get_aliases_with_http_info(app_id, alias_label, alias_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_aliases_with_http_info(app_id, alias_label, alias_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_aliases_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |

### Return type

[**UserIdentityBody**](UserIdentityBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aliases_by_subscription

> <UserIdentityBody> get_aliases_by_subscription(app_id, subscription_id)



Lists all Aliases for the User identified by :subscription_id.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
subscription_id = '7e4c5b9a-1f60-4d07-9b1a-2e8c8d2cae51' # String | 

begin
  
  result = api_instance.get_aliases_by_subscription(app_id, subscription_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_aliases_by_subscription: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_aliases_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityBody>, Integer, Hash)> get_aliases_by_subscription_with_http_info(app_id, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_aliases_by_subscription_with_http_info(app_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_aliases_by_subscription_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |

### Return type

[**UserIdentityBody**](UserIdentityBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_app

> <App> get_app(app_id)

View an app

View the details of a single OneSignal app

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | An app id

begin
  # View an app
  result = api_instance.get_app(app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_app: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> get_app_with_http_info(app_id)

```ruby
begin
  # View an app
  data, status_code, headers = api_instance.get_app_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_app_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | An app id |  |

### Return type

[**App**](App.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_apps

> <Array<App>> get_apps

View apps

View the details of all of your current OneSignal apps

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new

begin
  # View apps
  result = api_instance.get_apps
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_apps: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<App>>, Integer, Hash)> get_apps_with_http_info

```ruby
begin
  # View apps
  data, status_code, headers = api_instance.get_apps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<App>>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_apps_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;App&gt;**](App.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notification

> <NotificationWithMeta> get_notification(app_id, notification_id)

View notification

View the details of a single notification and outcomes associated with it

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
notification_id = 'b3a0c8bd-3a4c-4b22-9a73-3f1a8c2d1b88' # String | 

begin
  # View notification
  result = api_instance.get_notification(app_id, notification_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationWithMeta>, Integer, Hash)> get_notification_with_http_info(app_id, notification_id)

```ruby
begin
  # View notification
  data, status_code, headers = api_instance.get_notification_with_http_info(app_id, notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationWithMeta>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **notification_id** | **String** |  |  |

### Return type

[**NotificationWithMeta**](NotificationWithMeta.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notification_history

> <NotificationHistorySuccessResponse> get_notification_history(notification_id, get_notification_history_request_body)

Notification History

-> View the devices sent a message - OneSignal Paid Plan Required This method will return all devices that were sent the given notification_id of an Email or Push Notification if used within 7 days of the date sent. After 7 days of the sending date, the message history data will be unavailable. After a successful response is received, the destination url may be polled until the file becomes available. Most exports are done in ~1-3 minutes, so setting a poll interval of 10 seconds should be adequate. For use cases that are not meant to be consumed by a script, an email will be sent to the supplied email address. &#x1F6A7; Requirements A OneSignal Paid Plan. Turn on Send History via OneSignal API in Settings -> Analytics. Cannot get data before this was turned on. Must be called within 7 days after sending the message. Messages targeting under 1000 recipients will not have \"sent\" events recorded, but will show \"clicked\" events. Requires your OneSignal App's REST API Key, available in Keys & IDs.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
notification_id = 'b3a0c8bd-3a4c-4b22-9a73-3f1a8c2d1b88' # String | The \"id\" of the message found in the Notification object
get_notification_history_request_body = OneSignal::GetNotificationHistoryRequestBody.new # GetNotificationHistoryRequestBody | 

begin
  # Notification History
  result = api_instance.get_notification_history(notification_id, get_notification_history_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification_history: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_notification_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationHistorySuccessResponse>, Integer, Hash)> get_notification_history_with_http_info(notification_id, get_notification_history_request_body)

```ruby
begin
  # Notification History
  data, status_code, headers = api_instance.get_notification_history_with_http_info(notification_id, get_notification_history_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationHistorySuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification_history_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notification_id** | **String** | The \&quot;id\&quot; of the message found in the Notification object |  |
| **get_notification_history_request_body** | [**GetNotificationHistoryRequestBody**](GetNotificationHistoryRequestBody.md) |  |  |

### Return type

[**NotificationHistorySuccessResponse**](NotificationHistorySuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_notifications

> <NotificationSlice> get_notifications(app_id, opts)

View notifications

View the details of multiple notifications

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The app ID that you want to view notifications from
opts = {
  limit: 10, # Integer | How many notifications to return.  Max is 50.  Default is 50.
  offset: 0, # Integer | Page offset.  Default is 0.  Results are sorted by queued_at in descending order.  queued_at is a representation of the time that the notification was queued at.
  kind: 0, # Integer | Kind of notifications returned:   * unset - All notification types (default)   * `0` - Dashboard only   * `1` - API only   * `3` - Automated only 
  time_offset: '2025-01-01T00:00:00.000Z' # String | Time-offset pagination cursor for sequential pulls of all messages.  Accepts either an ISO 8601 formatted timestamp (e.g. `2025-01-01T00:00:00.000Z`) or the opaque Base64 cursor token returned as `next_time_offset` in a prior response.  When set, results are sorted ascending by send_after and the standard `offset` parameter cannot be used.  Repeat the request with each `next_time_offset` until an empty notifications array is returned.
}

begin
  # View notifications
  result = api_instance.get_notifications(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notifications: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationSlice>, Integer, Hash)> get_notifications_with_http_info(app_id, opts)

```ruby
begin
  # View notifications
  data, status_code, headers = api_instance.get_notifications_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationSlice>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notifications_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The app ID that you want to view notifications from |  |
| **limit** | **Integer** | How many notifications to return.  Max is 50.  Default is 50. | [optional] |
| **offset** | **Integer** | Page offset.  Default is 0.  Results are sorted by queued_at in descending order.  queued_at is a representation of the time that the notification was queued at. | [optional] |
| **kind** | **Integer** | Kind of notifications returned:   * unset - All notification types (default)   * &#x60;0&#x60; - Dashboard only   * &#x60;1&#x60; - API only   * &#x60;3&#x60; - Automated only  | [optional] |
| **time_offset** | **String** | Time-offset pagination cursor for sequential pulls of all messages.  Accepts either an ISO 8601 formatted timestamp (e.g. &#x60;2025-01-01T00:00:00.000Z&#x60;) or the opaque Base64 cursor token returned as &#x60;next_time_offset&#x60; in a prior response.  When set, results are sorted ascending by send_after and the standard &#x60;offset&#x60; parameter cannot be used.  Repeat the request with each &#x60;next_time_offset&#x60; until an empty notifications array is returned. | [optional] |

### Return type

[**NotificationSlice**](NotificationSlice.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_outcomes

> <OutcomesData> get_outcomes(app_id, outcome_names, opts)

View Outcomes

View the details of all the outcomes associated with your app  &#x1F6A7; Requires Authentication Key Requires your OneSignal App's REST API Key, available in Keys & IDs.  &#x1F6A7; Outcome Data Limitations Outcomes are only accessible for around 30 days before deleted from our servers. You will need to export this data every month if you want to keep it. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
outcome_names = 'os__session_duration.count,os__click.count' # String | Required Comma-separated list of names and the value (sum/count) for the returned outcome data. Note: Clicks only support count aggregation. For out-of-the-box OneSignal outcomes such as click and session duration, please use the \"os\" prefix with two underscores. For other outcomes, please use the name specified by the user. Example:os__session_duration.count,os__click.count,CustomOutcomeName.sum 
opts = {
  outcome_names2: 'os__session_duration.count', # String | Optional If outcome names contain any commas, then please specify only one value at a time. Example: outcome_names[]=os__click.count&outcome_names[]=Sales, Purchase.count where \"Sales, Purchase\" is the custom outcomes with a comma in the name. 
  outcome_time_range: '1d', # String | Optional Time range for the returned data. The values can be 1h (for the last 1 hour data), 1d (for the last 1 day data), or 1mo (for the last 1 month data). Default is 1h if the parameter is omitted. 
  outcome_platforms: '0,1', # String | Optional Platform id. Refer device's platform ids for values. Example: outcome_platform=0 for iOS outcome_platform=7,8 for Safari and Firefox Default is data from all platforms if the parameter is omitted. 
  outcome_attribution: 'direct' # String | Optional Attribution type for the outcomes. The values can be direct or influenced or unattributed. Example: outcome_attribution=direct Default is total (returns direct+influenced+unattributed) if the parameter is omitted. 
}

begin
  # View Outcomes
  result = api_instance.get_outcomes(app_id, outcome_names, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_outcomes: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_outcomes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OutcomesData>, Integer, Hash)> get_outcomes_with_http_info(app_id, outcome_names, opts)

```ruby
begin
  # View Outcomes
  data, status_code, headers = api_instance.get_outcomes_with_http_info(app_id, outcome_names, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OutcomesData>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_outcomes_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **outcome_names** | **String** | Required Comma-separated list of names and the value (sum/count) for the returned outcome data. Note: Clicks only support count aggregation. For out-of-the-box OneSignal outcomes such as click and session duration, please use the \&quot;os\&quot; prefix with two underscores. For other outcomes, please use the name specified by the user. Example:os__session_duration.count,os__click.count,CustomOutcomeName.sum  |  |
| **outcome_names2** | **String** | Optional If outcome names contain any commas, then please specify only one value at a time. Example: outcome_names[]&#x3D;os__click.count&amp;outcome_names[]&#x3D;Sales, Purchase.count where \&quot;Sales, Purchase\&quot; is the custom outcomes with a comma in the name.  | [optional] |
| **outcome_time_range** | **String** | Optional Time range for the returned data. The values can be 1h (for the last 1 hour data), 1d (for the last 1 day data), or 1mo (for the last 1 month data). Default is 1h if the parameter is omitted.  | [optional] |
| **outcome_platforms** | **String** | Optional Platform id. Refer device&#39;s platform ids for values. Example: outcome_platform&#x3D;0 for iOS outcome_platform&#x3D;7,8 for Safari and Firefox Default is data from all platforms if the parameter is omitted.  | [optional] |
| **outcome_attribution** | **String** | Optional Attribution type for the outcomes. The values can be direct or influenced or unattributed. Example: outcome_attribution&#x3D;direct Default is total (returns direct+influenced+unattributed) if the parameter is omitted.  | [optional] |

### Return type

[**OutcomesData**](OutcomesData.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment

> <GetSegmentSuccessResponse> get_segment(app_id, segment_id, opts)

View Segment

Retrieve details for a single segment by its ID, including subscriber count and optionally segment metadata and filters.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
segment_id = 'd6c5a3e1-9f17-44a1-9d10-7c0e4a2b1c8e' # String | The segment's unique identifier. Can be found using the View Segments API or in the URL of the segment when viewing it in the dashboard.
opts = {
  include_segment_detail: true # Boolean | Set to true to include segment metadata and filters in the response.
}

begin
  # View Segment
  result = api_instance.get_segment(app_id, segment_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_segment: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSegmentSuccessResponse>, Integer, Hash)> get_segment_with_http_info(app_id, segment_id, opts)

```ruby
begin
  # View Segment
  data, status_code, headers = api_instance.get_segment_with_http_info(app_id, segment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSegmentSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_segment_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **segment_id** | **String** | The segment&#39;s unique identifier. Can be found using the View Segments API or in the URL of the segment when viewing it in the dashboard. |  |
| **include_segment_detail** | **Boolean** | Set to true to include segment metadata and filters in the response. | [optional] |

### Return type

[**GetSegmentSuccessResponse**](GetSegmentSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segments

> <GetSegmentsSuccessResponse> get_segments(app_id, opts)

Get Segments

Returns an array of segments from an app.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
opts = {
  offset: 0, # Integer | Segments are listed in ascending order of created_at date. offset will omit that number of segments from the beginning of the list. Eg offset 5, will remove the 5 earliest created Segments.
  limit: 10 # Integer | The amount of Segments in the response. Maximum 300.
}

begin
  # Get Segments
  result = api_instance.get_segments(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_segments: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSegmentsSuccessResponse>, Integer, Hash)> get_segments_with_http_info(app_id, opts)

```ruby
begin
  # Get Segments
  data, status_code, headers = api_instance.get_segments_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSegmentsSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_segments_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **offset** | **Integer** | Segments are listed in ascending order of created_at date. offset will omit that number of segments from the beginning of the list. Eg offset 5, will remove the 5 earliest created Segments. | [optional] |
| **limit** | **Integer** | The amount of Segments in the response. Maximum 300. | [optional] |

### Return type

[**GetSegmentsSuccessResponse**](GetSegmentsSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user(app_id, alias_label, alias_id)



Returns the User’s properties, Aliases, and Subscriptions.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 

begin
  
  result = api_instance.get_user(app_id, alias_label, alias_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_user: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(app_id, alias_label, alias_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_with_http_info(app_id, alias_label, alias_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_user_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |

### Return type

[**User**](User.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_audit_logs

> <ListAuditLogsSuccessResponse> list_audit_logs(organization_id, opts)

List audit logs

Retrieve a paginated, time-scoped list of audit log events for an organization. Requires an Enterprise plan with the audit logs entitlement enabled.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
organization_id = 'YOUR_ORG_ID' # String | The UUID of the organization to retrieve audit logs for. Must match the authenticated Organization API Key.
opts = {
  start_time: 'start_time_example', # String | Start of the time range in ISO 8601 format (e.g. 2026-02-01T00:00:00Z). Required unless cursor is provided. Must be within the last 90 days.
  end_time: 'end_time_example', # String | End of the time range in ISO 8601 format. Defaults to the current time. Must be after start_time.
  cursor: 'cursor_example', # String | Pagination cursor returned in a previous response as next_cursor. When provided, start_time and end_time are ignored.
  limit: 56, # Integer | Maximum number of events to return per page. Minimum 1, maximum 100. Values outside this range are clamped automatically by the server.
  app_ids: ['inner_example'], # Array<String> | Filter events by app UUID. Accepts up to 10 values. Org-level events are always included.
  actions: ['inner_example'], # Array<String> | Filter by action type (e.g. notification.sent, segment.created). Accepts up to 20 values.
  actor_ids: ['inner_example'], # Array<String> | Filter by actor UUID (the user or service that performed the action). Accepts up to 10 values.
  actor_emails: ['inner_example'], # Array<String> | Filter by actor email address. Accepts up to 10 values.
  target_types: ['inner_example'], # Array<String> | Filter by the type of resource the action was performed on (e.g. notification, segment, journey). Accepts up to 10 values.
  target_ids: ['inner_example'], # Array<String> | Filter by the UUID of the resource the action was performed on. Accepts up to 10 values.
  ip_addresses: ['inner_example'] # Array<String> | Filter by the IP address the action originated from. Accepts up to 10 values.
}

begin
  # List audit logs
  result = api_instance.list_audit_logs(organization_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->list_audit_logs: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the list_audit_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAuditLogsSuccessResponse>, Integer, Hash)> list_audit_logs_with_http_info(organization_id, opts)

```ruby
begin
  # List audit logs
  data, status_code, headers = api_instance.list_audit_logs_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAuditLogsSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->list_audit_logs_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The UUID of the organization to retrieve audit logs for. Must match the authenticated Organization API Key. |  |
| **start_time** | **String** | Start of the time range in ISO 8601 format (e.g. 2026-02-01T00:00:00Z). Required unless cursor is provided. Must be within the last 90 days. | [optional] |
| **end_time** | **String** | End of the time range in ISO 8601 format. Defaults to the current time. Must be after start_time. | [optional] |
| **cursor** | **String** | Pagination cursor returned in a previous response as next_cursor. When provided, start_time and end_time are ignored. | [optional] |
| **limit** | **Integer** | Maximum number of events to return per page. Minimum 1, maximum 100. Values outside this range are clamped automatically by the server. | [optional] |
| **app_ids** | [**Array&lt;String&gt;**](String.md) | Filter events by app UUID. Accepts up to 10 values. Org-level events are always included. | [optional] |
| **actions** | [**Array&lt;String&gt;**](String.md) | Filter by action type (e.g. notification.sent, segment.created). Accepts up to 20 values. | [optional] |
| **actor_ids** | [**Array&lt;String&gt;**](String.md) | Filter by actor UUID (the user or service that performed the action). Accepts up to 10 values. | [optional] |
| **actor_emails** | [**Array&lt;String&gt;**](String.md) | Filter by actor email address. Accepts up to 10 values. | [optional] |
| **target_types** | [**Array&lt;String&gt;**](String.md) | Filter by the type of resource the action was performed on (e.g. notification, segment, journey). Accepts up to 10 values. | [optional] |
| **target_ids** | [**Array&lt;String&gt;**](String.md) | Filter by the UUID of the resource the action was performed on. Accepts up to 10 values. | [optional] |
| **ip_addresses** | [**Array&lt;String&gt;**](String.md) | Filter by the IP address the action originated from. Accepts up to 10 values. | [optional] |

### Return type

[**ListAuditLogsSuccessResponse**](ListAuditLogsSuccessResponse.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_api_key

> <CreateApiKeyResponse> rotate_api_key(app_id, token_id)

Rotate API key

Rotate a Rich Authentication Token (App API Key) for a OneSignal app. Rotating a key revokes the current token and generates a new one under the same configuration—ideal when a token is lost or compromised but you don’t want to recreate and reconfigure it from scratch.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
token_id = '0aa1b2c3-d4e5-46f7-8899-aabbccddeeff' # String | 

begin
  # Rotate API key
  result = api_instance.rotate_api_key(app_id, token_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->rotate_api_key: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the rotate_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateApiKeyResponse>, Integer, Hash)> rotate_api_key_with_http_info(app_id, token_id)

```ruby
begin
  # Rotate API key
  data, status_code, headers = api_instance.rotate_api_key_with_http_info(app_id, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateApiKeyResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->rotate_api_key_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

[**CreateApiKeyResponse**](CreateApiKeyResponse.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_live_activity

> <StartLiveActivitySuccessResponse> start_live_activity(app_id, activity_type, start_live_activity_request)

Start Live Activity

Remotely start a Live Activity on iOS devices via OneSignal’s REST API.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | Your OneSignal App ID in UUID v4 format.
activity_type = 'order_status' # String | The name of the Live Activity defined in your app. This should match the attributes struct used in your app's Live Activity implementation.
start_live_activity_request = OneSignal::StartLiveActivityRequest.new({name: 'name_example', event: 'start', activity_id: 'activity_id_example', event_attributes: 3.56, event_updates: 3.56, contents: OneSignal::LanguageStringMap.new, headings: OneSignal::LanguageStringMap.new}) # StartLiveActivityRequest | 

begin
  # Start Live Activity
  result = api_instance.start_live_activity(app_id, activity_type, start_live_activity_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->start_live_activity: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the start_live_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartLiveActivitySuccessResponse>, Integer, Hash)> start_live_activity_with_http_info(app_id, activity_type, start_live_activity_request)

```ruby
begin
  # Start Live Activity
  data, status_code, headers = api_instance.start_live_activity_with_http_info(app_id, activity_type, start_live_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartLiveActivitySuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->start_live_activity_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Your OneSignal App ID in UUID v4 format. |  |
| **activity_type** | **String** | The name of the Live Activity defined in your app. This should match the attributes struct used in your app&#39;s Live Activity implementation. |  |
| **start_live_activity_request** | [**StartLiveActivityRequest**](StartLiveActivityRequest.md) |  |  |

### Return type

[**StartLiveActivitySuccessResponse**](StartLiveActivitySuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_subscription

> <UserIdentityBody> transfer_subscription(app_id, subscription_id, transfer_subscription_request_body)



Transfers this Subscription to the User identified by the identity in the payload.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
subscription_id = '7e4c5b9a-1f60-4d07-9b1a-2e8c8d2cae51' # String | 
transfer_subscription_request_body = OneSignal::TransferSubscriptionRequestBody.new # TransferSubscriptionRequestBody | 

begin
  
  result = api_instance.transfer_subscription(app_id, subscription_id, transfer_subscription_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->transfer_subscription: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the transfer_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityBody>, Integer, Hash)> transfer_subscription_with_http_info(app_id, subscription_id, transfer_subscription_request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.transfer_subscription_with_http_info(app_id, subscription_id, transfer_subscription_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->transfer_subscription_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |
| **transfer_subscription_request_body** | [**TransferSubscriptionRequestBody**](TransferSubscriptionRequestBody.md) |  |  |

### Return type

[**UserIdentityBody**](UserIdentityBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unsubscribe_email_with_token

> <GenericSuccessBoolResponse> unsubscribe_email_with_token(app_id, notification_id, token)

Unsubscribe with token

Unsubscribe an email with a token when using your own custom email unsubscribe landing page

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
notification_id = 'b3a0c8bd-3a4c-4b22-9a73-3f1a8c2d1b88' # String | The id of the message found in the creation notification POST response, View Notifications GET response, or URL within the Message Report.
token = 'YOUR_TOKEN_ID' # String | The unsubscribe token that is generated via liquid syntax in {{subscription.unsubscribe_token}} when personalizing an email.

begin
  # Unsubscribe with token
  result = api_instance.unsubscribe_email_with_token(app_id, notification_id, token)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->unsubscribe_email_with_token: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the unsubscribe_email_with_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericSuccessBoolResponse>, Integer, Hash)> unsubscribe_email_with_token_with_http_info(app_id, notification_id, token)

```ruby
begin
  # Unsubscribe with token
  data, status_code, headers = api_instance.unsubscribe_email_with_token_with_http_info(app_id, notification_id, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericSuccessBoolResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->unsubscribe_email_with_token_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **notification_id** | **String** | The id of the message found in the creation notification POST response, View Notifications GET response, or URL within the Message Report. |  |
| **token** | **String** | The unsubscribe token that is generated via liquid syntax in {{subscription.unsubscribe_token}} when personalizing an email. |  |

### Return type

[**GenericSuccessBoolResponse**](GenericSuccessBoolResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_key

> Object update_api_key(app_id, token_id, update_api_key_request)

Update API key

Update a Rich Authentication Token (App API Key) for a OneSignal app.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
token_id = '0aa1b2c3-d4e5-46f7-8899-aabbccddeeff' # String | 
update_api_key_request = OneSignal::UpdateApiKeyRequest.new # UpdateApiKeyRequest | 

begin
  # Update API key
  result = api_instance.update_api_key(app_id, token_id, update_api_key_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_api_key: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_api_key_with_http_info(app_id, token_id, update_api_key_request)

```ruby
begin
  # Update API key
  data, status_code, headers = api_instance.update_api_key_with_http_info(app_id, token_id, update_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_api_key_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **token_id** | **String** |  |  |
| **update_api_key_request** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) |  |  |

### Return type

**Object**

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_app

> <App> update_app(app_id, app)

Update an app

Updates the name or configuration settings of an existing OneSignal app

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | An app id
app = OneSignal::App.new # App | 

begin
  # Update an app
  result = api_instance.update_app(app_id, app)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_app: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> update_app_with_http_info(app_id, app)

```ruby
begin
  # Update an app
  data, status_code, headers = api_instance.update_app_with_http_info(app_id, app)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_app_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | An app id |  |
| **app** | [**App**](App.md) |  |  |

### Return type

[**App**](App.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_live_activity

> <UpdateLiveActivitySuccessResponse> update_live_activity(app_id, activity_id, update_live_activity_request)

Update a Live Activity via Push

Updates a specified live activity.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
activity_id = '12345' # String | Live Activity record ID
update_live_activity_request = OneSignal::UpdateLiveActivityRequest.new({name: 'name_example', event: 'update', event_updates: 3.56}) # UpdateLiveActivityRequest | 

begin
  # Update a Live Activity via Push
  result = api_instance.update_live_activity(app_id, activity_id, update_live_activity_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_live_activity: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_live_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLiveActivitySuccessResponse>, Integer, Hash)> update_live_activity_with_http_info(app_id, activity_id, update_live_activity_request)

```ruby
begin
  # Update a Live Activity via Push
  data, status_code, headers = api_instance.update_live_activity_with_http_info(app_id, activity_id, update_live_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLiveActivitySuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_live_activity_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **activity_id** | **String** | Live Activity record ID |  |
| **update_live_activity_request** | [**UpdateLiveActivityRequest**](UpdateLiveActivityRequest.md) |  |  |

### Return type

[**UpdateLiveActivitySuccessResponse**](UpdateLiveActivitySuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_segment

> <UpdateSegmentSuccessResponse> update_segment(app_id, segment_id, opts)

Update Segment

Update an existing segment's name and/or filters. The name parameter is always required. When filters are provided, all existing filters are replaced with the new ones.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
segment_id = 'd6c5a3e1-9f17-44a1-9d10-7c0e4a2b1c8e' # String | The segment's unique identifier. Can be found using the View Segments API or in the URL of the segment when viewing it in the dashboard.
opts = {
  update_segment_request: OneSignal::UpdateSegmentRequest.new({name: 'name_example'}) # UpdateSegmentRequest | 
}

begin
  # Update Segment
  result = api_instance.update_segment(app_id, segment_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_segment: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSegmentSuccessResponse>, Integer, Hash)> update_segment_with_http_info(app_id, segment_id, opts)

```ruby
begin
  # Update Segment
  data, status_code, headers = api_instance.update_segment_with_http_info(app_id, segment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSegmentSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_segment_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **segment_id** | **String** | The segment&#39;s unique identifier. Can be found using the View Segments API or in the URL of the segment when viewing it in the dashboard. |  |
| **update_segment_request** | [**UpdateSegmentRequest**](UpdateSegmentRequest.md) |  | [optional] |

### Return type

[**UpdateSegmentSuccessResponse**](UpdateSegmentSuccessResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_subscription

> update_subscription(app_id, subscription_id, subscription_body)



Updates an existing Subscription’s properties.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
subscription_id = '7e4c5b9a-1f60-4d07-9b1a-2e8c8d2cae51' # String | 
subscription_body = OneSignal::SubscriptionBody.new # SubscriptionBody | 

begin
  
  api_instance.update_subscription(app_id, subscription_id, subscription_body)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_subscription: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_subscription_with_http_info(app_id, subscription_id, subscription_body)

```ruby
begin
  
  data, status_code, headers = api_instance.update_subscription_with_http_info(app_id, subscription_id, subscription_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_subscription_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |
| **subscription_body** | [**SubscriptionBody**](SubscriptionBody.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_subscription_by_token

> Object update_subscription_by_token(app_id, token_type, token, subscription_body)

Update subscription by token

Update properties on an existing OneSignal subscription using its token.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | Your OneSignal App ID in UUID v4 format.
token_type = 'Email' # String | The type of token to use when looking up the subscription. See Subscription Types.
token = 'user@example.com' # String | The value of the token to lookup by (e.g., email address, phone number).
subscription_body = OneSignal::SubscriptionBody.new # SubscriptionBody | 

begin
  # Update subscription by token
  result = api_instance.update_subscription_by_token(app_id, token_type, token, subscription_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_subscription_by_token: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_subscription_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_subscription_by_token_with_http_info(app_id, token_type, token, subscription_body)

```ruby
begin
  # Update subscription by token
  data, status_code, headers = api_instance.update_subscription_by_token_with_http_info(app_id, token_type, token, subscription_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_subscription_by_token_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Your OneSignal App ID in UUID v4 format. |  |
| **token_type** | **String** | The type of token to use when looking up the subscription. See Subscription Types. |  |
| **token** | **String** | The value of the token to lookup by (e.g., email address, phone number). |  |
| **subscription_body** | [**SubscriptionBody**](SubscriptionBody.md) |  |  |

### Return type

**Object**

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_template

> <TemplateResource> update_template(template_id, app_id, update_template_request)

Update template

Update an existing template.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
template_id = 'e4d3c2b1-a09f-4f1e-8d7c-6b5a4f3e2d1c' # String | 
app_id = 'YOUR_APP_ID' # String | 
update_template_request = OneSignal::UpdateTemplateRequest.new # UpdateTemplateRequest | 

begin
  # Update template
  result = api_instance.update_template(template_id, app_id, update_template_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_template: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResource>, Integer, Hash)> update_template_with_http_info(template_id, app_id, update_template_request)

```ruby
begin
  # Update template
  data, status_code, headers = api_instance.update_template_with_http_info(template_id, app_id, update_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResource>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_template_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **app_id** | **String** |  |  |
| **update_template_request** | [**UpdateTemplateRequest**](UpdateTemplateRequest.md) |  |  |

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <PropertiesBody> update_user(app_id, alias_label, alias_id, update_user_request)



Updates an existing User’s properties.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 
alias_label = 'external_id' # String | 
alias_id = 'YOUR_USER_EXTERNAL_ID' # String | 
update_user_request = OneSignal::UpdateUserRequest.new # UpdateUserRequest | 

begin
  
  result = api_instance.update_user(app_id, alias_label, alias_id, update_user_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_user: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PropertiesBody>, Integer, Hash)> update_user_with_http_info(app_id, alias_label, alias_id, update_user_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_user_with_http_info(app_id, alias_label, alias_id, update_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PropertiesBody>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_user_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |
| **update_user_request** | [**UpdateUserRequest**](UpdateUserRequest.md) |  |  |

### Return type

[**PropertiesBody**](PropertiesBody.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## view_api_keys

> <ApiKeyTokensListResponse> view_api_keys(app_id)

View API keys

View the details of all of your current app API keys (Rich Authentication Token) for a single OneSignal app.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: organization_api_key
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | 

begin
  # View API keys
  result = api_instance.view_api_keys(app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->view_api_keys: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the view_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyTokensListResponse>, Integer, Hash)> view_api_keys_with_http_info(app_id)

```ruby
begin
  # View API keys
  data, status_code, headers = api_instance.view_api_keys_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyTokensListResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->view_api_keys_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

[**ApiKeyTokensListResponse**](ApiKeyTokensListResponse.md)

### Authorization

[organization_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## view_template

> <TemplateResource> view_template(template_id, app_id)

View template

Fetch a single template by id.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
template_id = 'e4d3c2b1-a09f-4f1e-8d7c-6b5a4f3e2d1c' # String | 
app_id = 'YOUR_APP_ID' # String | 

begin
  # View template
  result = api_instance.view_template(template_id, app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->view_template: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the view_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResource>, Integer, Hash)> view_template_with_http_info(template_id, app_id)

```ruby
begin
  # View template
  data, status_code, headers = api_instance.view_template_with_http_info(template_id, app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResource>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->view_template_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **app_id** | **String** |  |  |

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## view_templates

> <TemplatesListResponse> view_templates(app_id, opts)

View templates

List templates for an app.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'YOUR_REST_API_KEY'

end

api_instance = OneSignal::DefaultApi.new
app_id = 'YOUR_APP_ID' # String | Your OneSignal App ID in UUID v4 format.
opts = {
  limit: 10, # Integer | Maximum number of templates. Default and max is 50.
  offset: 0, # Integer | Pagination offset.
  channel: 'push' # String | Filter by delivery channel.
}

begin
  # View templates
  result = api_instance.view_templates(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->view_templates: #{e}"
  puts "Status Code: #{e.code}"
  # `e.error_messages` flattens any error-envelope shape to an Array<String>;
  # the raw body remains on `e.response_body`.
  puts "Error Messages: #{e.error_messages}"
  puts "Response Body: #{e.response_body}"
end
```

#### Using the view_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesListResponse>, Integer, Hash)> view_templates_with_http_info(app_id, opts)

```ruby
begin
  # View templates
  data, status_code, headers = api_instance.view_templates_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesListResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->view_templates_with_http_info: #{e}"
  puts "Status Code: #{e.code}"
  puts "Response Body: #{e.response_body}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Your OneSignal App ID in UUID v4 format. |  |
| **limit** | **Integer** | Maximum number of templates. Default and max is 50. | [optional][default to 50] |
| **offset** | **Integer** | Pagination offset. | [optional][default to 0] |
| **channel** | **String** | Filter by delivery channel. | [optional] |

### Return type

[**TemplatesListResponse**](TemplatesListResponse.md)

### Authorization

[rest_api_key](https://github.com/OneSignal/onesignal-ruby-api#configuration)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

