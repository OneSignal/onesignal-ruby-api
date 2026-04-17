# onesignal

OneSignal - the Ruby gem for OneSignal

A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

- API version: 5.4.0
- Package version: 5.4.0

## Installation

Add to your `Gemfile`:

```ruby
gem 'onesignal', '~> 5.4.0'
```

Then run `bundle install`.

## Configuration

Every SDK requires authentication via API keys. Two key types are available:

- **REST API Key** — required for most endpoints (sending notifications, managing users, etc.). Found in your app's **Settings > Keys & IDs**.
- **Organization API Key** — only required for organization-level endpoints like creating or listing apps. Found in **Organization Settings**.

> **Warning:** Store your API keys in environment variables or a secrets manager. Never commit them to source control.

```ruby
require 'onesignal'

OneSignal.configure do |config|
  config.rest_api_key = 'YOUR_REST_API_KEY'
  config.organization_api_key = 'YOUR_ORGANIZATION_API_KEY'
end

client = OneSignal::DefaultApi.new
```

## Send a push notification

```ruby
notification = OneSignal::Notification.new({
  app_id: 'YOUR_APP_ID',
  contents: { en: 'Hello from OneSignal!' },
  headings: { en: 'Push Notification' },
  included_segments: ['Subscribed Users']
})

response = client.create_notification(notification)
puts "Notification ID: #{response.id}"
```

## Send an email

```ruby
notification = OneSignal::Notification.new({
  app_id: 'YOUR_APP_ID',
  email_subject: 'Important Update',
  email_body: '<h1>Hello!</h1><p>This is an HTML email.</p>',
  included_segments: ['Subscribed Users'],
  channel_for_external_user_ids: 'email'
})

response = client.create_notification(notification)
```

## Send an SMS

```ruby
notification = OneSignal::Notification.new({
  app_id: 'YOUR_APP_ID',
  contents: { en: 'Your SMS message content here' },
  included_segments: ['Subscribed Users'],
  channel_for_external_user_ids: 'sms',
  sms_from: '+15551234567'
})

response = client.create_notification(notification)
```

## Full API reference

The complete list of API endpoints and their parameters is available in the [DefaultApi documentation](https://github.com/OneSignal/onesignal-ruby-api/blob/master/docs/DefaultApi.md).

For the underlying REST API, see the [OneSignal API reference](https://documentation.onesignal.com/reference).
