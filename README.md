# onesignal
OneSignal - the Ruby gem for the OneSignal

A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at [onesignal.com](https://onesignal.com)
## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'onesignal'

# Setup authorization
OneSignal.configure do |config|
  # Configure Bearer authorization: app_key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OneSignal::DefaultApi.new
app_id = 'app_id_example' # String |
notification_id = 'notification_id_example' # String |

begin
  #Stop a scheduled or currently outgoing notification
  result = api_instance.cancel_notification(app_id, notification_id)
  p result
rescue OneSignal::ApiError => e
  puts "Exception when calling DefaultApi->cancel_notification: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://onesignal.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OneSignal::DefaultApi* | [**cancel_notification**](docs/DefaultApi.md#cancel_notification) | **DELETE** /notifications/{notification_id} | Stop a scheduled or currently outgoing notification
*OneSignal::DefaultApi* | [**create_app**](docs/DefaultApi.md#create_app) | **POST** /apps | Create an app
*OneSignal::DefaultApi* | [**create_notification**](docs/DefaultApi.md#create_notification) | **POST** /notifications | Create notification
*OneSignal::DefaultApi* | [**create_player**](docs/DefaultApi.md#create_player) | **POST** /players | Add a device
*OneSignal::DefaultApi* | [**create_segments**](docs/DefaultApi.md#create_segments) | **POST** /apps/{app_id}/segments | Create Segments
*OneSignal::DefaultApi* | [**delete_player**](docs/DefaultApi.md#delete_player) | **DELETE** /players/{player_id} | Delete a user record
*OneSignal::DefaultApi* | [**delete_segments**](docs/DefaultApi.md#delete_segments) | **DELETE** /apps/{app_id}/segments/{segment_id} | Delete Segments
*OneSignal::DefaultApi* | [**export_players**](docs/DefaultApi.md#export_players) | **POST** /players/csv_export?app_id&#x3D;{app_id} | CSV export
*OneSignal::DefaultApi* | [**get_app**](docs/DefaultApi.md#get_app) | **GET** /apps/{app_id} | View an app
*OneSignal::DefaultApi* | [**get_apps**](docs/DefaultApi.md#get_apps) | **GET** /apps | View apps
*OneSignal::DefaultApi* | [**get_notification**](docs/DefaultApi.md#get_notification) | **GET** /notifications/{notification_id} | View notification
*OneSignal::DefaultApi* | [**get_notification_history**](docs/DefaultApi.md#get_notification_history) | **POST** /notifications/{notification_id}/history | Notification History
*OneSignal::DefaultApi* | [**get_notifications**](docs/DefaultApi.md#get_notifications) | **GET** /notifications | View notifications
*OneSignal::DefaultApi* | [**get_outcomes**](docs/DefaultApi.md#get_outcomes) | **GET** /apps/{app_id}/outcomes | View Outcomes
*OneSignal::DefaultApi* | [**get_player**](docs/DefaultApi.md#get_player) | **GET** /players/{player_id} | View device
*OneSignal::DefaultApi* | [**get_players**](docs/DefaultApi.md#get_players) | **GET** /players | View devices
*OneSignal::DefaultApi* | [**update_app**](docs/DefaultApi.md#update_app) | **PUT** /apps/{app_id} | Update an app
*OneSignal::DefaultApi* | [**update_player**](docs/DefaultApi.md#update_player) | **PUT** /players/{player_id} | Edit device
*OneSignal::DefaultApi* | [**update_player_tags**](docs/DefaultApi.md#update_player_tags) | **PUT** /apps/{app_id}/users/{external_user_id} | Edit tags with external user id


## Documentation for Models

 - [OneSignal::App](docs/App.md)
 - [OneSignal::Button](docs/Button.md)
 - [OneSignal::DeliveryData](docs/DeliveryData.md)
 - [OneSignal::ExportPlayersRequestBody](docs/ExportPlayersRequestBody.md)
 - [OneSignal::Filter](docs/Filter.md)
 - [OneSignal::FilterExpressions](docs/FilterExpressions.md)
 - [OneSignal::FilterNotificationTarget](docs/FilterNotificationTarget.md)
 - [OneSignal::GetNotificationRequestBody](docs/GetNotificationRequestBody.md)
 - [OneSignal::InlineResponse200](docs/InlineResponse200.md)
 - [OneSignal::InlineResponse2001](docs/InlineResponse2001.md)
 - [OneSignal::InlineResponse2002](docs/InlineResponse2002.md)
 - [OneSignal::InlineResponse2003](docs/InlineResponse2003.md)
 - [OneSignal::InlineResponse2004](docs/InlineResponse2004.md)
 - [OneSignal::InlineResponse2005](docs/InlineResponse2005.md)
 - [OneSignal::InlineResponse201](docs/InlineResponse201.md)
 - [OneSignal::InlineResponse400](docs/InlineResponse400.md)
 - [OneSignal::InlineResponse4001](docs/InlineResponse4001.md)
 - [OneSignal::InlineResponse4002](docs/InlineResponse4002.md)
 - [OneSignal::InlineResponse409](docs/InlineResponse409.md)
 - [OneSignal::Notification](docs/Notification.md)
 - [OneSignal::NotificationAllOf](docs/NotificationAllOf.md)
 - [OneSignal::NotificationAllOfAndroidBackgroundLayout](docs/NotificationAllOfAndroidBackgroundLayout.md)
 - [OneSignal::NotificationSlice](docs/NotificationSlice.md)
 - [OneSignal::NotificationTarget](docs/NotificationTarget.md)
 - [OneSignal::Operator](docs/Operator.md)
 - [OneSignal::OutcomeData](docs/OutcomeData.md)
 - [OneSignal::PlatformDeliveryData](docs/PlatformDeliveryData.md)
 - [OneSignal::Player](docs/Player.md)
 - [OneSignal::PlayerNotificationTarget](docs/PlayerNotificationTarget.md)
 - [OneSignal::PlayerSlice](docs/PlayerSlice.md)
 - [OneSignal::Purchase](docs/Purchase.md)
 - [OneSignal::Segment](docs/Segment.md)
 - [OneSignal::SegmentNotificationTarget](docs/SegmentNotificationTarget.md)
 - [OneSignal::StringMap](docs/StringMap.md)
 - [OneSignal::UpdatePlayerTagsRequestBody](docs/UpdatePlayerTagsRequestBody.md)


## Documentation for Authorization


### app_key

- **Type**: Bearer authentication

### user_key

- **Type**: Bearer authentication

