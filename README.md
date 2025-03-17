# onesignal

OneSignal - the Ruby gem for the OneSignal

A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.4.0
- Package version: 2.2.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://onesignal.com](https://onesignal.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build onesignal.gemspec
```

Then either install the gem locally:

```shell
gem install ./onesignal-2.2.0.gem
```

(for development, run `gem install --dev ./onesignal-2.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'onesignal', '~> 2.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'onesignal', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

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
app_id = 'app_id_example' # String | The OneSignal App ID for your app.  Available in Keys & IDs.
activity_id = 'activity_id_example' # String | Live Activity record ID
begin_live_activity_request = OneSignal::BeginLiveActivityRequest.new({push_token: 'push_token_example', subscription_id: 'subscription_id_example'}) # BeginLiveActivityRequest | 

begin
  #Start Live Activity
  api_instance.begin_live_activity(app_id, activity_id, begin_live_activity_request)
rescue OneSignal::ApiError => e
  puts "Exception when calling DefaultApi->begin_live_activity: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.onesignal.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OneSignal::DefaultApi* | [**begin_live_activity**](docs/DefaultApi.md#begin_live_activity) | **POST** /apps/{app_id}/live_activities/{activity_id}/token | Start Live Activity
*OneSignal::DefaultApi* | [**cancel_notification**](docs/DefaultApi.md#cancel_notification) | **DELETE** /notifications/{notification_id} | Stop a scheduled or currently outgoing notification
*OneSignal::DefaultApi* | [**create_app**](docs/DefaultApi.md#create_app) | **POST** /apps | Create an app
*OneSignal::DefaultApi* | [**create_notification**](docs/DefaultApi.md#create_notification) | **POST** /notifications | Create notification
*OneSignal::DefaultApi* | [**create_player**](docs/DefaultApi.md#create_player) | **POST** /players | Add a device
*OneSignal::DefaultApi* | [**create_segments**](docs/DefaultApi.md#create_segments) | **POST** /apps/{app_id}/segments | Create Segments
*OneSignal::DefaultApi* | [**create_subscription**](docs/DefaultApi.md#create_subscription) | **POST** /apps/{app_id}/users/by/{alias_label}/{alias_id}/subscriptions | 
*OneSignal::DefaultApi* | [**create_user**](docs/DefaultApi.md#create_user) | **POST** /apps/{app_id}/users | 
*OneSignal::DefaultApi* | [**delete_alias**](docs/DefaultApi.md#delete_alias) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity/{alias_label_to_delete} | 
*OneSignal::DefaultApi* | [**delete_player**](docs/DefaultApi.md#delete_player) | **DELETE** /players/{player_id} | Delete a user record
*OneSignal::DefaultApi* | [**delete_segments**](docs/DefaultApi.md#delete_segments) | **DELETE** /apps/{app_id}/segments/{segment_id} | Delete Segments
*OneSignal::DefaultApi* | [**delete_subscription**](docs/DefaultApi.md#delete_subscription) | **DELETE** /apps/{app_id}/subscriptions/{subscription_id} | 
*OneSignal::DefaultApi* | [**delete_user**](docs/DefaultApi.md#delete_user) | **DELETE** /apps/{app_id}/users/by/{alias_label}/{alias_id} | 
*OneSignal::DefaultApi* | [**end_live_activity**](docs/DefaultApi.md#end_live_activity) | **DELETE** /apps/{app_id}/live_activities/{activity_id}/token/{subscription_id} | Stop Live Activity
*OneSignal::DefaultApi* | [**export_events**](docs/DefaultApi.md#export_events) | **POST** /notifications/{notification_id}/export_events?app_id&#x3D;{app_id} | Export CSV of Events
*OneSignal::DefaultApi* | [**export_players**](docs/DefaultApi.md#export_players) | **POST** /players/csv_export?app_id&#x3D;{app_id} | Export CSV of Players
*OneSignal::DefaultApi* | [**fetch_aliases**](docs/DefaultApi.md#fetch_aliases) | **GET** /apps/{app_id}/subscriptions/{subscription_id}/user/identity | 
*OneSignal::DefaultApi* | [**fetch_user**](docs/DefaultApi.md#fetch_user) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id} | 
*OneSignal::DefaultApi* | [**fetch_user_identity**](docs/DefaultApi.md#fetch_user_identity) | **GET** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity | 
*OneSignal::DefaultApi* | [**get_app**](docs/DefaultApi.md#get_app) | **GET** /apps/{app_id} | View an app
*OneSignal::DefaultApi* | [**get_apps**](docs/DefaultApi.md#get_apps) | **GET** /apps | View apps
*OneSignal::DefaultApi* | [**get_eligible_iams**](docs/DefaultApi.md#get_eligible_iams) | **GET** /apps/{app_id}/subscriptions/{subscription_id}/iams | 
*OneSignal::DefaultApi* | [**get_notification**](docs/DefaultApi.md#get_notification) | **GET** /notifications/{notification_id} | View notification
*OneSignal::DefaultApi* | [**get_notification_history**](docs/DefaultApi.md#get_notification_history) | **POST** /notifications/{notification_id}/history | Notification History
*OneSignal::DefaultApi* | [**get_notifications**](docs/DefaultApi.md#get_notifications) | **GET** /notifications | View notifications
*OneSignal::DefaultApi* | [**get_outcomes**](docs/DefaultApi.md#get_outcomes) | **GET** /apps/{app_id}/outcomes | View Outcomes
*OneSignal::DefaultApi* | [**get_player**](docs/DefaultApi.md#get_player) | **GET** /players/{player_id} | View device
*OneSignal::DefaultApi* | [**get_players**](docs/DefaultApi.md#get_players) | **GET** /players | View devices
*OneSignal::DefaultApi* | [**identify_user_by_alias**](docs/DefaultApi.md#identify_user_by_alias) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id}/identity | 
*OneSignal::DefaultApi* | [**identify_user_by_subscription_id**](docs/DefaultApi.md#identify_user_by_subscription_id) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/user/identity | 
*OneSignal::DefaultApi* | [**transfer_subscription**](docs/DefaultApi.md#transfer_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id}/owner | 
*OneSignal::DefaultApi* | [**update_app**](docs/DefaultApi.md#update_app) | **PUT** /apps/{app_id} | Update an app
*OneSignal::DefaultApi* | [**update_live_activity**](docs/DefaultApi.md#update_live_activity) | **POST** /apps/{app_id}/live_activities/{activity_id}/notifications | Update a Live Activity via Push
*OneSignal::DefaultApi* | [**update_player**](docs/DefaultApi.md#update_player) | **PUT** /players/{player_id} | Edit device
*OneSignal::DefaultApi* | [**update_player_tags**](docs/DefaultApi.md#update_player_tags) | **PUT** /apps/{app_id}/users/{external_user_id} | Edit tags with external user id
*OneSignal::DefaultApi* | [**update_subscription**](docs/DefaultApi.md#update_subscription) | **PATCH** /apps/{app_id}/subscriptions/{subscription_id} | 
*OneSignal::DefaultApi* | [**update_user**](docs/DefaultApi.md#update_user) | **PATCH** /apps/{app_id}/users/by/{alias_label}/{alias_id} | 


## Documentation for Models

 - [OneSignal::App](docs/App.md)
 - [OneSignal::BasicNotification](docs/BasicNotification.md)
 - [OneSignal::BasicNotificationAllOf](docs/BasicNotificationAllOf.md)
 - [OneSignal::BasicNotificationAllOfAndroidBackgroundLayout](docs/BasicNotificationAllOfAndroidBackgroundLayout.md)
 - [OneSignal::BeginLiveActivityRequest](docs/BeginLiveActivityRequest.md)
 - [OneSignal::Button](docs/Button.md)
 - [OneSignal::CancelNotificationSuccessResponse](docs/CancelNotificationSuccessResponse.md)
 - [OneSignal::CreateNotificationSuccessResponse](docs/CreateNotificationSuccessResponse.md)
 - [OneSignal::CreatePlayerSuccessResponse](docs/CreatePlayerSuccessResponse.md)
 - [OneSignal::CreateSegmentConflictResponse](docs/CreateSegmentConflictResponse.md)
 - [OneSignal::CreateSegmentSuccessResponse](docs/CreateSegmentSuccessResponse.md)
 - [OneSignal::CreateSubscriptionRequestBody](docs/CreateSubscriptionRequestBody.md)
 - [OneSignal::CreateUserConflictResponse](docs/CreateUserConflictResponse.md)
 - [OneSignal::CreateUserConflictResponseErrorsInner](docs/CreateUserConflictResponseErrorsInner.md)
 - [OneSignal::CreateUserConflictResponseErrorsItemsMeta](docs/CreateUserConflictResponseErrorsItemsMeta.md)
 - [OneSignal::DeletePlayerNotFoundResponse](docs/DeletePlayerNotFoundResponse.md)
 - [OneSignal::DeletePlayerSuccessResponse](docs/DeletePlayerSuccessResponse.md)
 - [OneSignal::DeleteSegmentNotFoundResponse](docs/DeleteSegmentNotFoundResponse.md)
 - [OneSignal::DeleteSegmentSuccessResponse](docs/DeleteSegmentSuccessResponse.md)
 - [OneSignal::DeliveryData](docs/DeliveryData.md)
 - [OneSignal::ExportEventsSuccessResponse](docs/ExportEventsSuccessResponse.md)
 - [OneSignal::ExportPlayersRequestBody](docs/ExportPlayersRequestBody.md)
 - [OneSignal::ExportPlayersSuccessResponse](docs/ExportPlayersSuccessResponse.md)
 - [OneSignal::Filter](docs/Filter.md)
 - [OneSignal::FilterExpressions](docs/FilterExpressions.md)
 - [OneSignal::GenericError](docs/GenericError.md)
 - [OneSignal::GenericErrorErrorsInner](docs/GenericErrorErrorsInner.md)
 - [OneSignal::GetNotificationRequestBody](docs/GetNotificationRequestBody.md)
 - [OneSignal::InlineResponse200](docs/InlineResponse200.md)
 - [OneSignal::InlineResponse2003](docs/InlineResponse2003.md)
 - [OneSignal::InlineResponse201](docs/InlineResponse201.md)
 - [OneSignal::InlineResponse202](docs/InlineResponse202.md)
 - [OneSignal::InvalidIdentifierError](docs/InvalidIdentifierError.md)
 - [OneSignal::Notification](docs/Notification.md)
 - [OneSignal::Notification200Errors](docs/Notification200Errors.md)
 - [OneSignal::NotificationAllOf](docs/NotificationAllOf.md)
 - [OneSignal::NotificationHistorySuccessResponse](docs/NotificationHistorySuccessResponse.md)
 - [OneSignal::NotificationSlice](docs/NotificationSlice.md)
 - [OneSignal::NotificationTarget](docs/NotificationTarget.md)
 - [OneSignal::NotificationWithMeta](docs/NotificationWithMeta.md)
 - [OneSignal::NotificationWithMetaAllOf](docs/NotificationWithMetaAllOf.md)
 - [OneSignal::Operator](docs/Operator.md)
 - [OneSignal::OutcomeData](docs/OutcomeData.md)
 - [OneSignal::OutcomesData](docs/OutcomesData.md)
 - [OneSignal::PlatformDeliveryData](docs/PlatformDeliveryData.md)
 - [OneSignal::PlatformDeliveryDataEmailAllOf](docs/PlatformDeliveryDataEmailAllOf.md)
 - [OneSignal::PlatformDeliveryDataSmsAllOf](docs/PlatformDeliveryDataSmsAllOf.md)
 - [OneSignal::Player](docs/Player.md)
 - [OneSignal::PlayerNotificationTarget](docs/PlayerNotificationTarget.md)
 - [OneSignal::PlayerNotificationTargetIncludeAliases](docs/PlayerNotificationTargetIncludeAliases.md)
 - [OneSignal::PlayerSlice](docs/PlayerSlice.md)
 - [OneSignal::PropertiesDeltas](docs/PropertiesDeltas.md)
 - [OneSignal::PropertiesObject](docs/PropertiesObject.md)
 - [OneSignal::Purchase](docs/Purchase.md)
 - [OneSignal::RateLimiterError](docs/RateLimiterError.md)
 - [OneSignal::Segment](docs/Segment.md)
 - [OneSignal::SegmentNotificationTarget](docs/SegmentNotificationTarget.md)
 - [OneSignal::StringMap](docs/StringMap.md)
 - [OneSignal::SubscriptionObject](docs/SubscriptionObject.md)
 - [OneSignal::TransferSubscriptionRequestBody](docs/TransferSubscriptionRequestBody.md)
 - [OneSignal::UpdateLiveActivityRequest](docs/UpdateLiveActivityRequest.md)
 - [OneSignal::UpdateLiveActivitySuccessResponse](docs/UpdateLiveActivitySuccessResponse.md)
 - [OneSignal::UpdatePlayerSuccessResponse](docs/UpdatePlayerSuccessResponse.md)
 - [OneSignal::UpdatePlayerTagsRequestBody](docs/UpdatePlayerTagsRequestBody.md)
 - [OneSignal::UpdatePlayerTagsSuccessResponse](docs/UpdatePlayerTagsSuccessResponse.md)
 - [OneSignal::UpdateSubscriptionRequestBody](docs/UpdateSubscriptionRequestBody.md)
 - [OneSignal::UpdateUserRequest](docs/UpdateUserRequest.md)
 - [OneSignal::User](docs/User.md)
 - [OneSignal::UserIdentityRequestBody](docs/UserIdentityRequestBody.md)
 - [OneSignal::UserIdentityResponse](docs/UserIdentityResponse.md)
 - [OneSignal::UserSubscriptionOptions](docs/UserSubscriptionOptions.md)


## Documentation for Authorization


### app_key

- **Type**: Bearer authentication

### user_key

- **Type**: Bearer authentication

