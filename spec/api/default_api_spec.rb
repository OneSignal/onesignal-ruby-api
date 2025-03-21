=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 1.4.0
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OneSignal::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = OneSignal::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(OneSignal::DefaultApi)
    end
  end

  # unit tests for begin_live_activity
  # Start Live Activity
  # Starts a Live Activity
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param activity_id Live Activity record ID
  # @param begin_live_activity_request 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'begin_live_activity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_notification
  # Stop a scheduled or currently outgoing notification
  # Used to stop a scheduled or currently outgoing notification
  # @param app_id 
  # @param notification_id 
  # @param [Hash] opts the optional parameters
  # @return [CancelNotificationSuccessResponse]
  describe 'cancel_notification test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_app
  # Create an app
  # Creates a new OneSignal app
  # @param app 
  # @param [Hash] opts the optional parameters
  # @return [App]
  describe 'create_app test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_notification
  # Create notification
  # Sends notifications to your users 
  # @param notification 
  # @param [Hash] opts the optional parameters
  # @return [CreateNotificationSuccessResponse]
  describe 'create_notification test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_player
  # Add a device
  # Register a new device to one of your OneSignal apps &amp;#x1F6A7; Don&#39;t use this This API endpoint is designed to be used from our open source Mobile and Web Push SDKs. It is not designed for developers to use it directly, unless instructed to do so by OneSignal support. If you use this method instead of our SDKs, many OneSignal features such as conversion tracking, timezone tracking, language detection, and rich-push won&#39;t work out of the box. It will also make it harder to identify possible setup issues. This method is used to register a new device with OneSignal. If a device is already registered with the specified identifier, then this will update the existing device record instead of creating a new one. The returned player is a player / user ID. Use the returned ID to send push notifications to this specific user later, or to include this player when sending to a set of users. &amp;#x1F6A7; iOS Must set test_type to 1 when building your iOS app as development. Omit this field in your production app builds. 
  # @param player 
  # @param [Hash] opts the optional parameters
  # @return [CreatePlayerSuccessResponse]
  describe 'create_player test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_segments
  # Create Segments
  # Create segments visible and usable in the dashboard and API - Required: OneSignal Paid Plan The Create Segment method is used when you want your server to programmatically create a segment instead of using the OneSignal Dashboard UI. Just like creating Segments from the dashboard you can pass in filters with multiple \&quot;AND\&quot; or \&quot;OR\&quot; operator&#39;s. &amp;#x1F6A7; Does Not Update Segments This endpoint will only create segments, it does not edit or update currently created Segments. You will need to use the Delete Segments endpoint and re-create it with this endpoint to edit. 
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param [Hash] opts the optional parameters
  # @option opts [Segment] :segment 
  # @return [CreateSegmentSuccessResponse]
  describe 'create_segments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_subscription
  # Creates a new Subscription under the User provided. Useful to add email addresses and SMS numbers to the User.
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param create_subscription_request_body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse201]
  describe 'create_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_user
  # Creates a User, optionally Subscriptions owned by the User as well as Aliases. Aliases provided in the payload will be used to look up an existing User.
  # @param app_id 
  # @param user 
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'create_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_alias
  # Deletes an alias by alias label
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param alias_label_to_delete 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'delete_alias test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_player
  # Delete a user record
  # Delete player - Required: Used to delete a single, specific Player ID record from a specific OneSignal app. 
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param player_id The OneSignal player_id
  # @param [Hash] opts the optional parameters
  # @return [DeletePlayerSuccessResponse]
  describe 'delete_player test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_segments
  # Delete Segments
  # Delete segments (not user devices) - Required: OneSignal Paid Plan You can delete a segment under your app by calling this API. You must provide an API key in the Authorization header that has admin access on the app. The segment_id can be found in the URL of the segment when viewing it in the dashboard. 
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param segment_id The segment_id can be found in the URL of the segment when viewing it in the dashboard.
  # @param [Hash] opts the optional parameters
  # @return [DeleteSegmentSuccessResponse]
  describe 'delete_segments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_subscription
  # Deletes the Subscription.
  # @param app_id 
  # @param subscription_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user
  # Removes the User identified by (:alias_label, :alias_id), and all Subscriptions and Aliases
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for end_live_activity
  # Stop Live Activity
  # Stops a Live Activity
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param activity_id Live Activity record ID
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'end_live_activity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for export_events
  # Export CSV of Events
  # Generate a compressed CSV report of all of the events data for a notification. This will return a URL immediately upon success but it may take several minutes for the CSV to become available at that URL depending on the volume of data. Only one export can be in-progress per OneSignal account at any given time.
  # @param notification_id The ID of the notification to export events from.
  # @param app_id The ID of the app that the notification belongs to.
  # @param [Hash] opts the optional parameters
  # @return [ExportEventsSuccessResponse]
  describe 'export_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for export_players
  # Export CSV of Players
  # Generate a compressed CSV export of all of your current user data This method can be used to generate a compressed CSV export of all of your current user data. It is a much faster alternative than retrieving this data using the /players API endpoint. The file will be compressed using GZip. The file may take several minutes to generate depending on the number of users in your app. The URL generated will be available for 3 days and includes random v4 uuid as part of the resource name to be unguessable. &amp;#x1F6A7; 403 Error Responses          You can test if it is complete by making a GET request to the csv_file_url value. This file may take time to generate depending on how many device records are being pulled. If the file is not ready, a 403 error will be returned. Otherwise the file itself will be returned. &amp;#x1F6A7; Requires Authentication Key Requires your OneSignal App&#39;s REST API Key, available in Keys &amp; IDs. &amp;#x1F6A7; Concurrent Exports Only one concurrent export is allowed per OneSignal account. Please ensure you have successfully downloaded the .csv.gz file before exporting another app. CSV File Format: - Default Columns:   | Field | Details |   | --- | --- |   | id | OneSignal Player Id |   | identifier | Push Token |   | session_count | Number of times they visited the app or site   | language | Device language code |   | timezone | Number of seconds away from UTC. Example: -28800 |   | game_version | Version of your mobile app gathered from Android Studio versionCode in your App/build.gradle and iOS uses kCFBundleVersionKey in Xcode. |   | device_os | Device Operating System Version. Example: 80 &#x3D; Chrome 80, 9 &#x3D; Android 9 |   | device_type | Device Operating System Type |   | device_model | Device Hardware String Code. Example: Mobile Web Subscribers will have &#x60;Linux armv&#x60; |   | ad_id | Based on the Google Advertising Id for Android, identifierForVendor for iOS. OptedOut means user turned off Advertising tracking on the device. |   | tags | Current OneSignal Data Tags on the device. |   | last_active | Date and time the user last opened the mobile app or visited the site. |   | playtime | Total amount of time in seconds the user had the mobile app open. |   | amount_spent |  Mobile only - amount spent in USD on In-App Purchases. |    | created_at | Date and time the device record was created in OneSignal. Mobile - first time they opened the app with OneSignal SDK. Web - first time the user subscribed to the site. |   | invalid_identifier | t &#x3D; unsubscribed, f &#x3D; subscibed |   | badge_count | Current number of badges on the device | - Extra Columns:   | Field | Details |   | --- | --- |   | external_user_id | Your User Id set on the device |   | notification_types | Notification types |   | location | Location points (Latitude and Longitude) set on the device. |   | country | Country code |   | rooted | Android device rooted or not |   | ip | IP Address of the device if being tracked. See Handling Personal Data. |   | web_auth | Web Only authorization key. |   | web_p256 | Web Only p256 key. | 
  # @param app_id The app ID that you want to export devices from
  # @param [Hash] opts the optional parameters
  # @option opts [ExportPlayersRequestBody] :export_players_request_body 
  # @return [ExportPlayersSuccessResponse]
  describe 'export_players test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_aliases
  # Lists all Aliases for the User identified by :subscription_id.
  # @param app_id 
  # @param subscription_id 
  # @param [Hash] opts the optional parameters
  # @return [UserIdentityResponse]
  describe 'fetch_aliases test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_user
  # Returns the User’s properties, Aliases, and Subscriptions.
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'fetch_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_user_identity
  # Lists all Aliases for the User identified by (:alias_label, :alias_id).
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'fetch_user_identity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_app
  # View an app
  # View the details of a single OneSignal app
  # @param app_id An app id
  # @param [Hash] opts the optional parameters
  # @return [App]
  describe 'get_app test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_apps
  # View apps
  # View the details of all of your current OneSignal apps
  # @param [Hash] opts the optional parameters
  # @return [Array<App>]
  describe 'get_apps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_eligible_iams
  # Manifest of In-App Messages the Subscription is eligible to display by the SDK.
  # @param app_id 
  # @param subscription_id 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'get_eligible_iams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_notification
  # View notification
  # View the details of a single notification and outcomes associated with it
  # @param app_id 
  # @param notification_id 
  # @param [Hash] opts the optional parameters
  # @return [NotificationWithMeta]
  describe 'get_notification test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_notification_history
  # Notification History
  # -&gt; View the devices sent a message - OneSignal Paid Plan Required This method will return all devices that were sent the given notification_id of an Email or Push Notification if used within 7 days of the date sent. After 7 days of the sending date, the message history data will be unavailable. After a successful response is received, the destination url may be polled until the file becomes available. Most exports are done in ~1-3 minutes, so setting a poll interval of 10 seconds should be adequate. For use cases that are not meant to be consumed by a script, an email will be sent to the supplied email address. &amp;#x1F6A7; Requirements A OneSignal Paid Plan. Turn on Send History via OneSignal API in Settings -&gt; Analytics. Cannot get data before this was turned on. Must be called within 7 days after sending the message. Messages targeting under 1000 recipients will not have \&quot;sent\&quot; events recorded, but will show \&quot;clicked\&quot; events. Requires your OneSignal App&#39;s REST API Key, available in Keys &amp; IDs.
  # @param notification_id The \&quot;id\&quot; of the message found in the Notification object
  # @param get_notification_request_body 
  # @param [Hash] opts the optional parameters
  # @return [NotificationHistorySuccessResponse]
  describe 'get_notification_history test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_notifications
  # View notifications
  # View the details of multiple notifications
  # @param app_id The app ID that you want to view notifications from
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit How many notifications to return.  Max is 50.  Default is 50.
  # @option opts [Integer] :offset Page offset.  Default is 0.  Results are sorted by queued_at in descending order.  queued_at is a representation of the time that the notification was queued at.
  # @option opts [Integer] :kind Kind of notifications returned:   * unset - All notification types (default)   * &#x60;0&#x60; - Dashboard only   * &#x60;1&#x60; - API only   * &#x60;3&#x60; - Automated only 
  # @return [NotificationSlice]
  describe 'get_notifications test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_outcomes
  # View Outcomes
  # View the details of all the outcomes associated with your app  &amp;#x1F6A7; Requires Authentication Key Requires your OneSignal App&#39;s REST API Key, available in Keys &amp; IDs.  &amp;#x1F6A7; Outcome Data Limitations Outcomes are only accessible for around 30 days before deleted from our servers. You will need to export this data every month if you want to keep it. 
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param outcome_names Required Comma-separated list of names and the value (sum/count) for the returned outcome data. Note: Clicks only support count aggregation. For out-of-the-box OneSignal outcomes such as click and session duration, please use the \&quot;os\&quot; prefix with two underscores. For other outcomes, please use the name specified by the user. Example:os__session_duration.count,os__click.count,CustomOutcomeName.sum 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :outcome_names2 Optional If outcome names contain any commas, then please specify only one value at a time. Example: outcome_names[]&#x3D;os__click.count&amp;outcome_names[]&#x3D;Sales, Purchase.count where \&quot;Sales, Purchase\&quot; is the custom outcomes with a comma in the name. 
  # @option opts [String] :outcome_time_range Optional Time range for the returned data. The values can be 1h (for the last 1 hour data), 1d (for the last 1 day data), or 1mo (for the last 1 month data). Default is 1h if the parameter is omitted. 
  # @option opts [String] :outcome_platforms Optional Platform id. Refer device&#39;s platform ids for values. Example: outcome_platform&#x3D;0 for iOS outcome_platform&#x3D;7,8 for Safari and Firefox Default is data from all platforms if the parameter is omitted. 
  # @option opts [String] :outcome_attribution Optional Attribution type for the outcomes. The values can be direct or influenced or unattributed. Example: outcome_attribution&#x3D;direct Default is total (returns direct+influenced+unattributed) if the parameter is omitted. 
  # @return [OutcomesData]
  describe 'get_outcomes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_player
  # View device
  # View the details of an existing device in one of your OneSignal apps
  # @param app_id Your app_id for this device
  # @param player_id Player&#39;s OneSignal ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email_auth_hash Email - Only required if you have enabled Identity Verification and device_type is email (11).
  # @return [Player]
  describe 'get_player test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_players
  # View devices
  # View the details of multiple devices in one of your OneSignal apps Unavailable for Apps Over 80,000 Users For performance reasons, this method is not available for larger apps. Larger apps should use the CSV export API endpoint, which is much more performant. 
  # @param app_id The app ID that you want to view players from
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit How many devices to return. Max is 300. Default is 300
  # @option opts [Integer] :offset Result offset. Default is 0. Results are sorted by id;
  # @return [PlayerSlice]
  describe 'get_players test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for identify_user_by_alias
  # Upserts one or more Aliases to an existing User identified by (:alias_label, :alias_id).
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param user_identity_request_body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'identify_user_by_alias test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for identify_user_by_subscription_id
  # Upserts one or more Aliases for the User identified by :subscription_id.
  # @param app_id 
  # @param subscription_id 
  # @param user_identity_request_body 
  # @param [Hash] opts the optional parameters
  # @return [UserIdentityResponse]
  describe 'identify_user_by_subscription_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for transfer_subscription
  # Transfers this Subscription to the User identified by the identity in the payload.
  # @param app_id 
  # @param subscription_id 
  # @param transfer_subscription_request_body 
  # @param [Hash] opts the optional parameters
  # @return [UserIdentityResponse]
  describe 'transfer_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_app
  # Update an app
  # Updates the name or configuration settings of an existing OneSignal app
  # @param app_id An app id
  # @param app 
  # @param [Hash] opts the optional parameters
  # @return [App]
  describe 'update_app test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_live_activity
  # Update a Live Activity via Push
  # Updates a specified live activity.
  # @param app_id The OneSignal App ID for your app.  Available in Keys &amp; IDs.
  # @param activity_id Live Activity record ID
  # @param update_live_activity_request 
  # @param [Hash] opts the optional parameters
  # @return [UpdateLiveActivitySuccessResponse]
  describe 'update_live_activity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_player
  # Edit device
  # Update an existing device in one of your OneSignal apps
  # @param player_id Player&#39;s OneSignal ID
  # @param player 
  # @param [Hash] opts the optional parameters
  # @return [UpdatePlayerSuccessResponse]
  describe 'update_player test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_player_tags
  # Edit tags with external user id
  # Update an existing device&#39;s tags in one of your OneSignal apps using the External User ID. Warning - Android SDK Data Synchronization Tags added through the Android SDK tagging methods may not update if using the API to change or update the same tag. For example, if you use SDK method sendTag(\&quot;key\&quot;, \&quot;value1\&quot;) then update the tag value to \&quot;value2\&quot; with this API endpoint. You will not be able to set the value back to \&quot;value1\&quot; through the SDK, you will need to change it to something different through the SDK to be reset. Recommendations if using this Endpoint on Android Mobile Apps: 1 - Do not use the same tag keys for SDK and API updates 2 - If you want to use the same key for both SDK and API updates, call the SDK getTags method first to update the device&#39;s tags. This is only applicable on the Android Mobile App SDKs. &amp;#128216; Deleting Tags To delete a tag, include its key and set its value to blank. Omitting a key/value will not delete it. For example, if I wanted to delete two existing tags rank and category while simultaneously adding a new tag class, the tags JSON would look like the following: \&quot;tags\&quot;: {    \&quot;rank\&quot;: \&quot;\&quot;,    \&quot;category\&quot;: \&quot;\&quot;,    \&quot;class\&quot;: \&quot;my_new_value\&quot; } 
  # @param app_id The OneSignal App ID the user record is found under.
  # @param external_user_id The External User ID mapped to teh device record in OneSignal.  Must be actively set on the device to be updated.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdatePlayerTagsRequestBody] :update_player_tags_request_body 
  # @return [UpdatePlayerTagsSuccessResponse]
  describe 'update_player_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_subscription
  # Updates an existing Subscription’s properties.
  # @param app_id 
  # @param subscription_id 
  # @param update_subscription_request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user
  # Updates an existing User’s properties.
  # @param app_id 
  # @param alias_label 
  # @param alias_id 
  # @param update_user_request 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse202]
  describe 'update_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
