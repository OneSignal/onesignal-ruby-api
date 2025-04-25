# OneSignal::DefaultApi

All URIs are relative to *https://api.onesignal.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**begin_live_activity**](DefaultApi.md#begin_live_activity) | **POST** /apps/{app_id}/live_activities/{activity_id}/token | Start Live Activity |
| [**cancel_notification**](DefaultApi.md#cancel_notification) | **DELETE** /notifications/{notification_id} | Stop a scheduled or currently outgoing notification |
| [**create_app**](DefaultApi.md#create_app) | **POST** /apps | Create an app |
| [**create_notification**](DefaultApi.md#create_notification) | **POST** /notifications | Create notification |
| [**create_player**](DefaultApi.md#create_player) | **POST** /players | Add a device |
| [**create_segments**](DefaultApi.md#create_segments) | **POST** /apps/{app_id}/segments | Create Segments |
| [**create_subscription**](DefaultApi.md#create_subscription) | **POST** /apps/{app_id}/users/by/{alias_label}/{alias_id}/subscriptions |  |
| [**create_user**](DefaultApi.md#create_user) | **POST** /apps/{app_id}/users |  |
| [**delete_alias**](DefaultApi.md#delete_alias) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity/{alias_label_to_delete} |  |
| [**delete_player**](DefaultApi.md#delete_player) | **DELETE** /players/{player_id} | Delete a user record |
| [**delete_segments**](DefaultApi.md#delete_segments) | **DELETE** /apps/{app_id}/segments/{segment_id} | Delete Segments |
| [**delete_subscription**](DefaultApi.md#delete_subscription) | **DELETE** /apps/{app_id}/subscriptions/{subscription_id} |  |
| [**delete_user**](DefaultApi.md#delete_user) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |
| [**end_live_activity**](DefaultApi.md#end_live_activity) | **DELETE** /apps/{app_id}/live_activities/{activity_id}/token/{subscription_id} | Stop Live Activity |
| [**export_events**](DefaultApi.md#export_events) | **POST** /notifications/{notification_id}/export_events?app_id&#x3D;{app_id} | Export CSV of Events |
| [**export_players**](DefaultApi.md#export_players) | **POST** /players/csv_export?app_id&#x3D;{app_id} | Export CSV of Players |
| [**fetch_aliases**](DefaultApi.md#fetch_aliases) | **GET** /apps/{app_id}/subscriptions/{subscription_id}/user/identity |  |
| [**fetch_user**](DefaultApi.md#fetch_user) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |
| [**fetch_user_identity**](DefaultApi.md#fetch_user_identity) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity |  |
| [**get_app**](DefaultApi.md#get_app) | **GET** /apps/{app_id} | View an app |
| [**get_apps**](DefaultApi.md#get_apps) | **GET** /apps | View apps |
| [**get_eligible_iams**](DefaultApi.md#get_eligible_iams) | **GET** /apps/{app_id}/subscriptions/{subscription_id}/iams |  |
| [**get_notification**](DefaultApi.md#get_notification) | **GET** /notifications/{notification_id} | View notification |
| [**get_notification_history**](DefaultApi.md#get_notification_history) | **POST** /notifications/{notification_id}/history | Notification History |
| [**get_notifications**](DefaultApi.md#get_notifications) | **GET** /notifications | View notifications |
| [**get_outcomes**](DefaultApi.md#get_outcomes) | **GET** /apps/{app_id}/outcomes | View Outcomes |
| [**get_player**](DefaultApi.md#get_player) | **GET** /players/{player_id} | View device |
| [**get_players**](DefaultApi.md#get_players) | **GET** /players | View devices |
| [**identify_user_by_alias**](DefaultApi.md#identify_user_by_alias) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity |  |
| [**identify_user_by_subscription_id**](DefaultApi.md#identify_user_by_subscription_id) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/user/identity |  |
| [**transfer_subscription**](DefaultApi.md#transfer_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/owner |  |
| [**update_app**](DefaultApi.md#update_app) | **PUT** /apps/{app_id} | Update an app |
| [**update_live_activity**](DefaultApi.md#update_live_activity) | **POST** /apps/{app_id}/live_activities/{activity_id}/notifications | Update a Live Activity via Push |
| [**update_player**](DefaultApi.md#update_player) | **PUT** /players/{player_id} | Edit device |
| [**update_player_tags**](DefaultApi.md#update_player_tags) | **PUT** /apps/{app_id}/users/{external_user_id} | Edit tags with external user id |
| [**update_subscription**](DefaultApi.md#update_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id} |  |
| [**update_user**](DefaultApi.md#update_user) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id} |  |


## begin_live_activity

> begin_live_activity(app_id, activity_id, begin_live_activity_request)

Start Live Activity

Starts a Live Activity

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
activity_id = 'activity_id_example' # String | Live Activity record ID
begin_live_activity_request = OneSignal::BeginLiveActivityRequest.new({push_token: 'push_token_example', subscription_id: 'subscription_id_example'}) # BeginLiveActivityRequest | 

begin
  # Start Live Activity
  api_instance.begin_live_activity(app_id, activity_id, begin_live_activity_request)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->begin_live_activity: #{e}"
end
```

#### Using the begin_live_activity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> begin_live_activity_with_http_info(app_id, activity_id, begin_live_activity_request)

```ruby
begin
  # Start Live Activity
  data, status_code, headers = api_instance.begin_live_activity_with_http_info(app_id, activity_id, begin_live_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->begin_live_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **activity_id** | **String** | Live Activity record ID |  |
| **begin_live_activity_request** | [**BeginLiveActivityRequest**](BeginLiveActivityRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_notification

> <CancelNotificationSuccessResponse> cancel_notification(app_id, notification_id)

Stop a scheduled or currently outgoing notification

Used to stop a scheduled or currently outgoing notification

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

> <Array(<CancelNotificationSuccessResponse>, Integer, Hash)> cancel_notification_with_http_info(app_id, notification_id)

```ruby
begin
  # Stop a scheduled or currently outgoing notification
  data, status_code, headers = api_instance.cancel_notification_with_http_info(app_id, notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelNotificationSuccessResponse>
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

[**CancelNotificationSuccessResponse**](CancelNotificationSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
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
  # Configure Bearer authorization: user_key
  config.user_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[user_key](../README.md#user_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_player

> <CreatePlayerSuccessResponse> create_player(player)

Add a device

Register a new device to one of your OneSignal apps &#x1F6A7; Don't use this This API endpoint is designed to be used from our open source Mobile and Web Push SDKs. It is not designed for developers to use it directly, unless instructed to do so by OneSignal support. If you use this method instead of our SDKs, many OneSignal features such as conversion tracking, timezone tracking, language detection, and rich-push won't work out of the box. It will also make it harder to identify possible setup issues. This method is used to register a new device with OneSignal. If a device is already registered with the specified identifier, then this will update the existing device record instead of creating a new one. The returned player is a player / user ID. Use the returned ID to send push notifications to this specific user later, or to include this player when sending to a set of users. &#x1F6A7; iOS Must set test_type to 1 when building your iOS app as development. Omit this field in your production app builds. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
player = OneSignal::Player.new({device_type: 37}) # Player | 

begin
  # Add a device
  result = api_instance.create_player(player)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_player: #{e}"
end
```

#### Using the create_player_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlayerSuccessResponse>, Integer, Hash)> create_player_with_http_info(player)

```ruby
begin
  # Add a device
  data, status_code, headers = api_instance.create_player_with_http_info(player)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlayerSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_player_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **player** | [**Player**](Player.md) |  |  |

### Return type

[**CreatePlayerSuccessResponse**](CreatePlayerSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_segments

> <CreateSegmentSuccessResponse> create_segments(app_id, opts)

Create Segments

Create segments visible and usable in the dashboard and API - Required: OneSignal Paid Plan The Create Segment method is used when you want your server to programmatically create a segment instead of using the OneSignal Dashboard UI. Just like creating Segments from the dashboard you can pass in filters with multiple \"AND\" or \"OR\" operator's. &#x1F6A7; Does Not Update Segments This endpoint will only create segments, it does not edit or update currently created Segments. You will need to use the Delete Segments endpoint and re-create it with this endpoint to edit. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
opts = {
  segment: OneSignal::Segment.new({name: 'name_example', filters: [OneSignal::FilterExpressions.new({field: 'field_example', relation: '>'})]}) # Segment | 
}

begin
  # Create Segments
  result = api_instance.create_segments(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_segments: #{e}"
end
```

#### Using the create_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSegmentSuccessResponse>, Integer, Hash)> create_segments_with_http_info(app_id, opts)

```ruby
begin
  # Create Segments
  data, status_code, headers = api_instance.create_segments_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSegmentSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_segments_with_http_info: #{e}"
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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_subscription

> <InlineResponse201> create_subscription(app_id, alias_label, alias_id, create_subscription_request_body)



Creates a new Subscription under the User provided. Useful to add email addresses and SMS numbers to the User.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 
create_subscription_request_body = OneSignal::CreateSubscriptionRequestBody.new # CreateSubscriptionRequestBody | 

begin
  
  result = api_instance.create_subscription(app_id, alias_label, alias_id, create_subscription_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse201>, Integer, Hash)> create_subscription_with_http_info(app_id, alias_label, alias_id, create_subscription_request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_subscription_with_http_info(app_id, alias_label, alias_id, create_subscription_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse201>
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
| **create_subscription_request_body** | [**CreateSubscriptionRequestBody**](CreateSubscriptionRequestBody.md) |  |  |

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_alias

> <InlineResponse200> delete_alias(app_id, alias_label, alias_id, alias_label_to_delete)



Deletes an alias by alias label

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

> <Array(<InlineResponse200>, Integer, Hash)> delete_alias_with_http_info(app_id, alias_label, alias_id, alias_label_to_delete)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_alias_with_http_info(app_id, alias_label, alias_id, alias_label_to_delete)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
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

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_player

> <DeletePlayerSuccessResponse> delete_player(app_id, player_id)

Delete a user record

Delete player - Required: Used to delete a single, specific Player ID record from a specific OneSignal app. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
player_id = 'player_id_example' # String | The OneSignal player_id

begin
  # Delete a user record
  result = api_instance.delete_player(app_id, player_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_player: #{e}"
end
```

#### Using the delete_player_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePlayerSuccessResponse>, Integer, Hash)> delete_player_with_http_info(app_id, player_id)

```ruby
begin
  # Delete a user record
  data, status_code, headers = api_instance.delete_player_with_http_info(app_id, player_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePlayerSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_player_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **player_id** | **String** | The OneSignal player_id |  |

### Return type

[**DeletePlayerSuccessResponse**](DeletePlayerSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_segments

> <DeleteSegmentSuccessResponse> delete_segments(app_id, segment_id)

Delete Segments

Delete segments (not user devices) - Required: OneSignal Paid Plan You can delete a segment under your app by calling this API. You must provide an API key in the Authorization header that has admin access on the app. The segment_id can be found in the URL of the segment when viewing it in the dashboard. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
segment_id = 'segment_id_example' # String | The segment_id can be found in the URL of the segment when viewing it in the dashboard.

begin
  # Delete Segments
  result = api_instance.delete_segments(app_id, segment_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_segments: #{e}"
end
```

#### Using the delete_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSegmentSuccessResponse>, Integer, Hash)> delete_segments_with_http_info(app_id, segment_id)

```ruby
begin
  # Delete Segments
  data, status_code, headers = api_instance.delete_segments_with_http_info(app_id, segment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSegmentSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->delete_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **segment_id** | **String** | The segment_id can be found in the URL of the segment when viewing it in the dashboard. |  |

### Return type

[**DeleteSegmentSuccessResponse**](DeleteSegmentSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## end_live_activity

> end_live_activity(app_id, activity_id, subscription_id)

Stop Live Activity

Stops a Live Activity

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
activity_id = 'activity_id_example' # String | Live Activity record ID
subscription_id = 'subscription_id_example' # String | Subscription ID

begin
  # Stop Live Activity
  api_instance.end_live_activity(app_id, activity_id, subscription_id)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->end_live_activity: #{e}"
end
```

#### Using the end_live_activity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> end_live_activity_with_http_info(app_id, activity_id, subscription_id)

```ruby
begin
  # Stop Live Activity
  data, status_code, headers = api_instance.end_live_activity_with_http_info(app_id, activity_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->end_live_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID for your app.  Available in Keys &amp; IDs. |  |
| **activity_id** | **String** | Live Activity record ID |  |
| **subscription_id** | **String** | Subscription ID |  |

### Return type

nil (empty response body)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_players

> <ExportPlayersSuccessResponse> export_players(app_id, opts)

Export CSV of Players

Generate a compressed CSV export of all of your current user data This method can be used to generate a compressed CSV export of all of your current user data. It is a much faster alternative than retrieving this data using the /players API endpoint. The file will be compressed using GZip. The file may take several minutes to generate depending on the number of users in your app. The URL generated will be available for 3 days and includes random v4 uuid as part of the resource name to be unguessable. &#x1F6A7; 403 Error Responses          You can test if it is complete by making a GET request to the csv_file_url value. This file may take time to generate depending on how many device records are being pulled. If the file is not ready, a 403 error will be returned. Otherwise the file itself will be returned. &#x1F6A7; Requires Authentication Key Requires your OneSignal App's REST API Key, available in Keys & IDs. &#x1F6A7; Concurrent Exports Only one concurrent export is allowed per OneSignal account. Please ensure you have successfully downloaded the .csv.gz file before exporting another app. CSV File Format: - Default Columns:   | Field | Details |   | --- | --- |   | id | OneSignal Player Id |   | identifier | Push Token |   | session_count | Number of times they visited the app or site   | language | Device language code |   | timezone | Number of seconds away from UTC. Example: -28800 |   | game_version | Version of your mobile app gathered from Android Studio versionCode in your App/build.gradle and iOS uses kCFBundleVersionKey in Xcode. |   | device_os | Device Operating System Version. Example: 80 = Chrome 80, 9 = Android 9 |   | device_type | Device Operating System Type |   | device_model | Device Hardware String Code. Example: Mobile Web Subscribers will have `Linux armv` |   | ad_id | Based on the Google Advertising Id for Android, identifierForVendor for iOS. OptedOut means user turned off Advertising tracking on the device. |   | tags | Current OneSignal Data Tags on the device. |   | last_active | Date and time the user last opened the mobile app or visited the site. |   | playtime | Total amount of time in seconds the user had the mobile app open. |   | amount_spent |  Mobile only - amount spent in USD on In-App Purchases. |    | created_at | Date and time the device record was created in OneSignal. Mobile - first time they opened the app with OneSignal SDK. Web - first time the user subscribed to the site. |   | invalid_identifier | t = unsubscribed, f = subscibed |   | badge_count | Current number of badges on the device | - Extra Columns:   | Field | Details |   | --- | --- |   | external_user_id | Your User Id set on the device |   | notification_types | Notification types |   | location | Location points (Latitude and Longitude) set on the device. |   | country | Country code |   | rooted | Android device rooted or not |   | ip | IP Address of the device if being tracked. See Handling Personal Data. |   | web_auth | Web Only authorization key. |   | web_p256 | Web Only p256 key. | 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The app ID that you want to export devices from
opts = {
  export_players_request_body: OneSignal::ExportPlayersRequestBody.new # ExportPlayersRequestBody | 
}

begin
  # Export CSV of Players
  result = api_instance.export_players(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_players: #{e}"
end
```

#### Using the export_players_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportPlayersSuccessResponse>, Integer, Hash)> export_players_with_http_info(app_id, opts)

```ruby
begin
  # Export CSV of Players
  data, status_code, headers = api_instance.export_players_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportPlayersSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->export_players_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The app ID that you want to export devices from |  |
| **export_players_request_body** | [**ExportPlayersRequestBody**](ExportPlayersRequestBody.md) |  | [optional] |

### Return type

[**ExportPlayersSuccessResponse**](ExportPlayersSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fetch_aliases

> <UserIdentityResponse> fetch_aliases(app_id, subscription_id)



Lists all Aliases for the User identified by :subscription_id.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 

begin
  
  result = api_instance.fetch_aliases(app_id, subscription_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->fetch_aliases: #{e}"
end
```

#### Using the fetch_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityResponse>, Integer, Hash)> fetch_aliases_with_http_info(app_id, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.fetch_aliases_with_http_info(app_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->fetch_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |

### Return type

[**UserIdentityResponse**](UserIdentityResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_user

> <User> fetch_user(app_id, alias_label, alias_id)



Returns the User’s properties, Aliases, and Subscriptions.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 

begin
  
  result = api_instance.fetch_user(app_id, alias_label, alias_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->fetch_user: #{e}"
end
```

#### Using the fetch_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> fetch_user_with_http_info(app_id, alias_label, alias_id)

```ruby
begin
  
  data, status_code, headers = api_instance.fetch_user_with_http_info(app_id, alias_label, alias_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->fetch_user_with_http_info: #{e}"
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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_user_identity

> <InlineResponse200> fetch_user_identity(app_id, alias_label, alias_id)



Lists all Aliases for the User identified by (:alias_label, :alias_id).

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 

begin
  
  result = api_instance.fetch_user_identity(app_id, alias_label, alias_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->fetch_user_identity: #{e}"
end
```

#### Using the fetch_user_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> fetch_user_identity_with_http_info(app_id, alias_label, alias_id)

```ruby
begin
  
  data, status_code, headers = api_instance.fetch_user_identity_with_http_info(app_id, alias_label, alias_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->fetch_user_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[user_key](../README.md#user_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[user_key](../README.md#user_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_eligible_iams

> <InlineResponse2003> get_eligible_iams(app_id, subscription_id)



Manifest of In-App Messages the Subscription is eligible to display by the SDK.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 

begin
  
  result = api_instance.get_eligible_iams(app_id, subscription_id)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_eligible_iams: #{e}"
end
```

#### Using the get_eligible_iams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2003>, Integer, Hash)> get_eligible_iams_with_http_info(app_id, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_eligible_iams_with_http_info(app_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2003>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_eligible_iams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notification_history

> <NotificationHistorySuccessResponse> get_notification_history(notification_id, get_notification_request_body)

Notification History

-> View the devices sent a message - OneSignal Paid Plan Required This method will return all devices that were sent the given notification_id of an Email or Push Notification if used within 7 days of the date sent. After 7 days of the sending date, the message history data will be unavailable. After a successful response is received, the destination url may be polled until the file becomes available. Most exports are done in ~1-3 minutes, so setting a poll interval of 10 seconds should be adequate. For use cases that are not meant to be consumed by a script, an email will be sent to the supplied email address. &#x1F6A7; Requirements A OneSignal Paid Plan. Turn on Send History via OneSignal API in Settings -> Analytics. Cannot get data before this was turned on. Must be called within 7 days after sending the message. Messages targeting under 1000 recipients will not have \"sent\" events recorded, but will show \"clicked\" events. Requires your OneSignal App's REST API Key, available in Keys & IDs.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
notification_id = 'notification_id_example' # String | The \"id\" of the message found in the Notification object
get_notification_request_body = OneSignal::GetNotificationRequestBody.new # GetNotificationRequestBody | 

begin
  # Notification History
  result = api_instance.get_notification_history(notification_id, get_notification_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_notification_history: #{e}"
end
```

#### Using the get_notification_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationHistorySuccessResponse>, Integer, Hash)> get_notification_history_with_http_info(notification_id, get_notification_request_body)

```ruby
begin
  # Notification History
  data, status_code, headers = api_instance.get_notification_history_with_http_info(notification_id, get_notification_request_body)
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
| **get_notification_request_body** | [**GetNotificationRequestBody**](GetNotificationRequestBody.md) |  |  |

### Return type

[**NotificationHistorySuccessResponse**](NotificationHistorySuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_player

> <Player> get_player(app_id, player_id, opts)

View device

View the details of an existing device in one of your OneSignal apps

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | Your app_id for this device
player_id = 'player_id_example' # String | Player's OneSignal ID
opts = {
  email_auth_hash: 'email_auth_hash_example' # String | Email - Only required if you have enabled Identity Verification and device_type is email (11).
}

begin
  # View device
  result = api_instance.get_player(app_id, player_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_player: #{e}"
end
```

#### Using the get_player_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Player>, Integer, Hash)> get_player_with_http_info(app_id, player_id, opts)

```ruby
begin
  # View device
  data, status_code, headers = api_instance.get_player_with_http_info(app_id, player_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Player>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_player_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Your app_id for this device |  |
| **player_id** | **String** | Player&#39;s OneSignal ID |  |
| **email_auth_hash** | **String** | Email - Only required if you have enabled Identity Verification and device_type is email (11). | [optional] |

### Return type

[**Player**](Player.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_players

> <PlayerSlice> get_players(app_id, opts)

View devices

View the details of multiple devices in one of your OneSignal apps Unavailable for Apps Over 80,000 Users For performance reasons, this method is not available for larger apps. Larger apps should use the CSV export API endpoint, which is much more performant. 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The app ID that you want to view players from
opts = {
  limit: 56, # Integer | How many devices to return. Max is 300. Default is 300
  offset: 56 # Integer | Result offset. Default is 0. Results are sorted by id;
}

begin
  # View devices
  result = api_instance.get_players(app_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_players: #{e}"
end
```

#### Using the get_players_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlayerSlice>, Integer, Hash)> get_players_with_http_info(app_id, opts)

```ruby
begin
  # View devices
  data, status_code, headers = api_instance.get_players_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlayerSlice>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->get_players_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The app ID that you want to view players from |  |
| **limit** | **Integer** | How many devices to return. Max is 300. Default is 300 | [optional] |
| **offset** | **Integer** | Result offset. Default is 0. Results are sorted by id; | [optional] |

### Return type

[**PlayerSlice**](PlayerSlice.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## identify_user_by_alias

> <InlineResponse200> identify_user_by_alias(app_id, alias_label, alias_id, user_identity_request_body)



Upserts one or more Aliases to an existing User identified by (:alias_label, :alias_id).

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
alias_label = 'alias_label_example' # String | 
alias_id = 'alias_id_example' # String | 
user_identity_request_body = OneSignal::UserIdentityRequestBody.new # UserIdentityRequestBody | 

begin
  
  result = api_instance.identify_user_by_alias(app_id, alias_label, alias_id, user_identity_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->identify_user_by_alias: #{e}"
end
```

#### Using the identify_user_by_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> identify_user_by_alias_with_http_info(app_id, alias_label, alias_id, user_identity_request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.identify_user_by_alias_with_http_info(app_id, alias_label, alias_id, user_identity_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->identify_user_by_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **alias_label** | **String** |  |  |
| **alias_id** | **String** |  |  |
| **user_identity_request_body** | [**UserIdentityRequestBody**](UserIdentityRequestBody.md) |  |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## identify_user_by_subscription_id

> <UserIdentityResponse> identify_user_by_subscription_id(app_id, subscription_id, user_identity_request_body)



Upserts one or more Aliases for the User identified by :subscription_id.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 
user_identity_request_body = OneSignal::UserIdentityRequestBody.new # UserIdentityRequestBody | 

begin
  
  result = api_instance.identify_user_by_subscription_id(app_id, subscription_id, user_identity_request_body)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->identify_user_by_subscription_id: #{e}"
end
```

#### Using the identify_user_by_subscription_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdentityResponse>, Integer, Hash)> identify_user_by_subscription_id_with_http_info(app_id, subscription_id, user_identity_request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.identify_user_by_subscription_id_with_http_info(app_id, subscription_id, user_identity_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->identify_user_by_subscription_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **subscription_id** | **String** |  |  |
| **user_identity_request_body** | [**UserIdentityRequestBody**](UserIdentityRequestBody.md) |  |  |

### Return type

[**UserIdentityResponse**](UserIdentityResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_subscription

> <UserIdentityResponse> transfer_subscription(app_id, subscription_id, transfer_subscription_request_body)



Transfers this Subscription to the User identified by the identity in the payload.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

> <Array(<UserIdentityResponse>, Integer, Hash)> transfer_subscription_with_http_info(app_id, subscription_id, transfer_subscription_request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.transfer_subscription_with_http_info(app_id, subscription_id, transfer_subscription_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdentityResponse>
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

[**UserIdentityResponse**](UserIdentityResponse.md)

### Authorization

[app_key](../README.md#app_key)

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
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: user_key
  config.user_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

[user_key](../README.md#user_key)

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
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
activity_id = 'activity_id_example' # String | Live Activity record ID
update_live_activity_request = OneSignal::UpdateLiveActivityRequest.new({name: 'headings', event: 'update', event_updates: 3.56}) # UpdateLiveActivityRequest | 

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

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_player

> <UpdatePlayerSuccessResponse> update_player(player_id, player)

Edit device

Update an existing device in one of your OneSignal apps

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
player_id = 'player_id_example' # String | Player's OneSignal ID
player = OneSignal::Player.new({device_type: 37}) # Player | 

begin
  # Edit device
  result = api_instance.update_player(player_id, player)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_player: #{e}"
end
```

#### Using the update_player_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePlayerSuccessResponse>, Integer, Hash)> update_player_with_http_info(player_id, player)

```ruby
begin
  # Edit device
  data, status_code, headers = api_instance.update_player_with_http_info(player_id, player)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePlayerSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_player_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **player_id** | **String** | Player&#39;s OneSignal ID |  |
| **player** | [**Player**](Player.md) |  |  |

### Return type

[**UpdatePlayerSuccessResponse**](UpdatePlayerSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_player_tags

> <UpdatePlayerTagsSuccessResponse> update_player_tags(app_id, external_user_id, opts)

Edit tags with external user id

Update an existing device's tags in one of your OneSignal apps using the External User ID. Warning - Android SDK Data Synchronization Tags added through the Android SDK tagging methods may not update if using the API to change or update the same tag. For example, if you use SDK method sendTag(\"key\", \"value1\") then update the tag value to \"value2\" with this API endpoint. You will not be able to set the value back to \"value1\" through the SDK, you will need to change it to something different through the SDK to be reset. Recommendations if using this Endpoint on Android Mobile Apps: 1 - Do not use the same tag keys for SDK and API updates 2 - If you want to use the same key for both SDK and API updates, call the SDK getTags method first to update the device's tags. This is only applicable on the Android Mobile App SDKs. &#128216; Deleting Tags To delete a tag, include its key and set its value to blank. Omitting a key/value will not delete it. For example, if I wanted to delete two existing tags rank and category while simultaneously adding a new tag class, the tags JSON would look like the following: \"tags\": {    \"rank\": \"\",    \"category\": \"\",    \"class\": \"my_new_value\" } 

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | The OneSignal App ID the user record is found under.
external_user_id = 'external_user_id_example' # String | The External User ID mapped to teh device record in OneSignal.  Must be actively set on the device to be updated.
opts = {
  update_player_tags_request_body: OneSignal::UpdatePlayerTagsRequestBody.new # UpdatePlayerTagsRequestBody | 
}

begin
  # Edit tags with external user id
  result = api_instance.update_player_tags(app_id, external_user_id, opts)
  p result
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_player_tags: #{e}"
end
```

#### Using the update_player_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePlayerTagsSuccessResponse>, Integer, Hash)> update_player_tags_with_http_info(app_id, external_user_id, opts)

```ruby
begin
  # Edit tags with external user id
  data, status_code, headers = api_instance.update_player_tags_with_http_info(app_id, external_user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePlayerTagsSuccessResponse>
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_player_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The OneSignal App ID the user record is found under. |  |
| **external_user_id** | **String** | The External User ID mapped to teh device record in OneSignal.  Must be actively set on the device to be updated. |  |
| **update_player_tags_request_body** | [**UpdatePlayerTagsRequestBody**](UpdatePlayerTagsRequestBody.md) |  | [optional] |

### Return type

[**UpdatePlayerTagsSuccessResponse**](UpdatePlayerTagsSuccessResponse.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_subscription

> update_subscription(app_id, subscription_id, update_subscription_request_body)



Updates an existing Subscription’s properties.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String | 
subscription_id = 'subscription_id_example' # String | 
update_subscription_request_body = OneSignal::UpdateSubscriptionRequestBody.new # UpdateSubscriptionRequestBody | 

begin
  
  api_instance.update_subscription(app_id, subscription_id, update_subscription_request_body)
rescue OneSignal::ApiError => e
  puts "Error when calling DefaultApi->update_subscription: #{e}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_subscription_with_http_info(app_id, subscription_id, update_subscription_request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.update_subscription_with_http_info(app_id, subscription_id, update_subscription_request_body)
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
| **update_subscription_request_body** | [**UpdateSubscriptionRequestBody**](UpdateSubscriptionRequestBody.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <InlineResponse202> update_user(app_id, alias_label, alias_id, update_user_request)



Updates an existing User’s properties.

### Examples

```ruby
require 'onesignal'
# setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: user_key
  config.user_key = 'ORGANIZATION_API_KEY' # Organization key is only required for creating new apps and other top-level endpoints
  # Configure Bearer authorization: app_key
  config.app_key = 'REST_API_KEY' # App REST API key required for most endpoints

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

> <Array(<InlineResponse202>, Integer, Hash)> update_user_with_http_info(app_id, alias_label, alias_id, update_user_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_user_with_http_info(app_id, alias_label, alias_id, update_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse202>
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

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[app_key](../README.md#app_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

