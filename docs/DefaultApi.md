# OneSignal::DefaultApi

All URIs are relative to *https://api.onesignal.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_notification**](DefaultApi.md#cancel_notification) | **DELETE** /notifications/{notification_id} | Stop a scheduled or currently outgoing notification |
| [**create_alias**](DefaultApi.md#create_alias) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity |  |
| [**create_alias_by_subscription**](DefaultApi.md#create_alias_by_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/user/identity |  |
| [**create_app**](DefaultApi.md#create_app) | **POST** /apps | Create an app |
| [**create_notification**](DefaultApi.md#create_notification) | **POST** /notifications | Create notification |
| [**create_segment**](DefaultApi.md#create_segment) | **POST** /apps/{app_id}/segments | Create Segment |
| [**create_subscription**](DefaultApi.md#create_subscription) | **POST** /apps/{app_id}/users/by/{alias_label}/{alias_id}/subscriptions |  |
| [**create_user**](DefaultApi.md#create_user) | **POST** /apps/{app_id}/users |  |
| [**delete_alias**](DefaultApi.md#delete_alias) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity/{alias_label_to_delete} |  |
| [**delete_segment**](DefaultApi.md#delete_segment) | **DELETE** /apps/{app_id}/segments/{segment_id} | Delete Segment |
| [**delete_subscription**](DefaultApi.md#delete_subscription) | **DELETE** /apps/{app_id}/subscriptions/{subscription_id} |  |
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
| [**get_segments**](DefaultApi.md#get_segments) | **GET** /apps/{app_id}/segments | Get Segments |
| [**get_user**](DefaultApi.md#get_user) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |
| [**transfer_subscription**](DefaultApi.md#transfer_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/owner |  |
| [**unsubscribe_email_with_token**](DefaultApi.md#unsubscribe_email_with_token) | **POST** /apps/{app_id}/notifications/{notification_id}/unsubscribe | Unsubscribe with token |
| [**update_app**](DefaultApi.md#update_app) | **PUT** /apps/{app_id} | Update an app |
| [**update_live_activity**](DefaultApi.md#update_live_activity) | **POST** /apps/{app_id}/live_activities/{activity_id}/notifications | Update a Live Activity via Push |
| [**update_subscription**](DefaultApi.md#update_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id} |  |
| [**update_user**](DefaultApi.md#update_user) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |


## cancel_notification

> <GenericSuccessBoolResponse> cancel_notification(app_id, notification_id)

Stop a scheduled or currently outgoing notification

Used to stop a scheduled or currently outgoing notification

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
notification_id = 'notification_id_example' # String | 

begin
  # Stop a scheduled or currently outgoing notification
  result = api_instance.cancel_notification(app_id, notification_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->cancel_notification: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_alias

> <UserIdentityBody> create_alias(app_id, alias_label, alias_id, user_identity_body)



Upserts one or more Aliases to an existing User identified by (:alias_label, :alias_id).

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 
user_identity_body = OneSignal::UserIdentityBody.new # UserIdentityBody | 

begin
  
  result = api_instance.create_alias(app_id, alias_label, alias_id, user_identity_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_alias: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 
user_identity_body = OneSignal::UserIdentityBody.new # UserIdentityBody | 

begin
  
  result = api_instance.create_alias_by_subscription(app_id, subscription_id, user_identity_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_alias_by_subscription: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: user_auth_key
  config.user_auth_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app = OneSignal::App.new # App | 

begin
  # Create an app
  result = api_instance.create_app(app)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_app: #{e}"
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
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app** | [**App**](App.md) |  |  |

### Return type

[**App**](App.md)

### Authorization

[user_auth_key](../README.md#user_auth_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_notification

> <CreateNotificationSuccessResponse> create_notification(notification)

Create notification

Sends notifications to your users 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
notification = OneSignal::Notification.new({app_id: 'app_id_example'}) # Notification | 

begin
  # Create notification
  result = api_instance.create_notification(notification)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_notification: #{e}"
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
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notification** | [**Notification**](Notification.md) |  |  |

### Return type

[**CreateNotificationSuccessResponse**](CreateNotificationSuccessResponse.md)

### Authorization

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
opts = {
  segment: OneSignal::Segment.new({name: 'name_example', filters: [OneSignal::Filter.new]}) # Segment | 
}

begin
  # Create Segment
  result = api_instance.create_segment(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_segment: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 
subscription_body = OneSignal::SubscriptionBody.new # SubscriptionBody | 

begin
  
  result = api_instance.create_subscription(app_id, alias_label, alias_id, subscription_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_subscription: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
user = OneSignal::User.new # User | 

begin
  
  result = api_instance.create_user(app_id, user)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_user: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 
alias_label_to_delete = 'alias_label_to_delete_example' # String | 

begin
  
  result = api_instance.delete_alias(app_id, alias_label, alias_id, alias_label_to_delete)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_alias: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
segment_id = 'segment_id_example' # String | The segment_id can be found in the URL of the segment when viewing it in the dashboard.

begin
  # Delete Segment
  result = api_instance.delete_segment(app_id, segment_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_segment: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 

begin
  
  api_instance.delete_subscription(app_id, subscription_id)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_subscription: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 

begin
  
  api_instance.delete_user(app_id, alias_label, alias_id)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_user: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
notification_id = 'notification_id_example' # String | The ID of the notification to export events from.
app_id = 'app_id_example' # String | The ID of the app that the notification belongs to.

begin
  # Export CSV of Events
  result = api_instance.export_events(notification_id, app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_events: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The app ID that you want to export devices from
opts = {
  export_subscriptions_request_body: OneSignal::ExportSubscriptionsRequestBody.new # ExportSubscriptionsRequestBody | 
}

begin
  # Export CSV of Subscriptions
  result = api_instance.export_subscriptions(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_subscriptions: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 

begin
  
  result = api_instance.get_aliases(app_id, alias_label, alias_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_aliases: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 

begin
  
  result = api_instance.get_aliases_by_subscription(app_id, subscription_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_aliases_by_subscription: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: user_auth_key
  config.user_auth_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | An app id

begin
  # View an app
  result = api_instance.get_app(app_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_app: #{e}"
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
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | An app id |  |

### Return type

[**App**](App.md)

### Authorization

[user_auth_key](../README.md#user_auth_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: user_auth_key
  config.user_auth_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new

begin
  # View apps
  result = api_instance.get_apps
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_apps: #{e}"
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
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;App&gt;**](App.md)

### Authorization

[user_auth_key](../README.md#user_auth_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
notification_id = 'notification_id_example' # String | 

begin
  # View notification
  result = api_instance.get_notification(app_id, notification_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
notification_id = 'notification_id_example' # String | The \"id\" of the message found in the Notification object
get_notification_history_request_body = OneSignal::GetNotificationHistoryRequestBody.new # GetNotificationHistoryRequestBody | 

begin
  # Notification History
  result = api_instance.get_notification_history(notification_id, get_notification_history_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification_history: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The app ID that you want to view notifications from
opts = {
  limit: 56, # Integer | How many notifications to return.  Max is 50.  Default is 50.
  offset: 56, # Integer | Page offset.  Default is 0.  Results are sorted by queued_at in descending order.  queued_at is a representation of the time that the notification was queued at.
  kind: 0 # Integer | Kind of notifications returned:   * unset - All notification types (default)   * `0` - Dashboard only   * `1` - API only   * `3` - Automated only 
}

begin
  # View notifications
  result = api_instance.get_notifications(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notifications: #{e}"
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
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The app ID that you want to view notifications from |  |
| **limit** | **Integer** | How many notifications to return.  Max is 50.  Default is 50. | [optional] |
| **offset** | **Integer** | Page offset.  Default is 0.  Results are sorted by queued_at in descending order.  queued_at is a representation of the time that the notification was queued at. | [optional] |
| **kind** | **Integer** | Kind of notifications returned:   * unset - All notification types (default)   * &#x60;0&#x60; - Dashboard only   * &#x60;1&#x60; - API only   * &#x60;3&#x60; - Automated only  | [optional] |

### Return type

[**NotificationSlice**](NotificationSlice.md)

### Authorization

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
outcome_names = 'outcome_names_example' # String | Required Comma-separated list of names and the value (sum/count) for the returned outcome data. Note: Clicks only support count aggregation. For out-of-the-box OneSignal outcomes such as click and session duration, please use the \"os\" prefix with two underscores. For other outcomes, please use the name specified by the user. Example:os__session_duration.count,os__click.count,CustomOutcomeName.sum 
opts = {
  outcome_names2: 'outcome_names_example', # String | Optional If outcome names contain any commas, then please specify only one value at a time. Example: outcome_names[]=os__click.count&outcome_names[]=Sales, Purchase.count where \"Sales, Purchase\" is the custom outcomes with a comma in the name. 
  outcome_time_range: 'outcome_time_range_example', # String | Optional Time range for the returned data. The values can be 1h (for the last 1 hour data), 1d (for the last 1 day data), or 1mo (for the last 1 month data). Default is 1h if the parameter is omitted. 
  outcome_platforms: 'outcome_platforms_example', # String | Optional Platform id. Refer device's platform ids for values. Example: outcome_platform=0 for iOS outcome_platform=7,8 for Safari and Firefox Default is data from all platforms if the parameter is omitted. 
  outcome_attribution: 'outcome_attribution_example' # String | Optional Attribution type for the outcomes. The values can be direct or influenced or unattributed. Example: outcome_attribution=direct Default is total (returns direct+influenced+unattributed) if the parameter is omitted. 
}

begin
  # View Outcomes
  result = api_instance.get_outcomes(app_id, outcome_names, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_outcomes: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
opts = {
  offset: 56, # Integer | Segments are listed in ascending order of created_at date. offset will omit that number of segments from the beginning of the list. Eg offset 5, will remove the 5 earliest created Segments.
  limit: 56 # Integer | The amount of Segments in the response. Maximum 300.
}

begin
  # Get Segments
  result = api_instance.get_segments(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_segments: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 

begin
  
  result = api_instance.get_user(app_id, alias_label, alias_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_user: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transfer_subscription

> <UserIdentityBody> transfer_subscription(app_id, subscription_id, transfer_subscription_request_body)



Transfers this Subscription to the User identified by the identity in the payload.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 
transfer_subscription_request_body = OneSignal::TransferSubscriptionRequestBody.new # TransferSubscriptionRequestBody | 

begin
  
  result = api_instance.transfer_subscription(app_id, subscription_id, transfer_subscription_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->transfer_subscription: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
notification_id = 'notification_id_example' # String | The id of the message found in the creation notification POST response, View Notifications GET response, or URL within the Message Report.
token = 'token_example' # String | The unsubscribe token that is generated via liquid syntax in {{subscription.unsubscribe_token}} when personalizing an email.

begin
  # Unsubscribe with token
  result = api_instance.unsubscribe_email_with_token(app_id, notification_id, token)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->unsubscribe_email_with_token: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

### HTTP request headers

- **Content-Type**: Not defined
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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: user_auth_key
  config.user_auth_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | An app id
app = OneSignal::App.new # App | 

begin
  # Update an app
  result = api_instance.update_app(app_id, app)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_app: #{e}"
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

[user_auth_key](../README.md#user_auth_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
activity_id = 'activity_id_example' # String | Live Activity record ID
update_live_activity_request = OneSignal::UpdateLiveActivityRequest.new({name: 'name_example', event: 'update', event_updates: 3.56}) # UpdateLiveActivityRequest | 

begin
  # Update a Live Activity via Push
  result = api_instance.update_live_activity(app_id, activity_id, update_live_activity_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_live_activity: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 
subscription_body = OneSignal::SubscriptionBody.new # SubscriptionBody | 

begin
  
  api_instance.update_subscription(app_id, subscription_id, subscription_body)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_subscription: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: rest_api_key
  config.rest_api_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 
update_user_request = OneSignal::UpdateUserRequest.new # UpdateUserRequest | 

begin
  
  result = api_instance.update_user(app_id, alias_label, alias_id, update_user_request)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_user: #{e}"
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

[rest_api_key](../README.md#rest_api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

