# AGENTS.md — OneSignal Ruby SDK

Integration guide for AI agents and LLMs using the `onesignal` gem, the OneSignal server SDK for Ruby. Human-oriented docs are in the [README](./README.md).

## What this SDK does

Server-side access to the OneSignal REST API: send push / email / SMS, manage users, subscriptions, segments, templates and live activities, and administer apps & API keys.

- Gem: `onesignal`
- Repository: https://github.com/OneSignal/onesignal-ruby-api

## Install

```sh
gem install onesignal
```

## Authentication — two key types

OneSignal uses two bearer credentials; each endpoint requires a specific one:

- **REST API key** — used by almost every endpoint (notifications, users, subscriptions, segments, templates, live activities, custom events). Found in **App Settings → Keys & IDs**.
- **Organization API key** — required *only* for organization-level endpoints: app management (list / create / get / update apps), API-key management (view / create / update / rotate / delete API keys), and copying a template to another app. Found in **Organization Settings**.

Configure both; the SDK sends the correct credential per endpoint. Never hard-code keys — read them from environment variables or a secrets manager.

```ruby
require 'onesignal'

OneSignal.configure do |config|
  config.rest_api_key = ENV['ONESIGNAL_REST_API_KEY']
  config.organization_api_key = ENV['ONESIGNAL_ORGANIZATION_API_KEY']
end

client = OneSignal::DefaultApi.new
```

## Calling convention

Methods take **positional arguments**. Build the model object and pass it directly — do **not** wrap arguments in a request/options object.

```ruby
notification = OneSignal::Notification.new
notification.app_id = 'YOUR_APP_ID'
notification.contents = OneSignal::LanguageStringMap.new({ en: 'Hello from OneSignal!' })
notification.include_aliases = { 'external_id' => ['YOUR_USER_EXTERNAL_ID'] }
notification.target_channel = 'push'

response = client.create_notification(notification)
```

## Idempotent sends & retries

Set `idempotency_key` (a UUID) so a create-notification request can be safely retried — the server returns the original result instead of sending twice. The `create_notification_with_retry` helper handles this for you: it generates an `idempotency_key` when absent, retries `429` / `503` / transport errors with the **same** key (honoring `Retry-After`), and reports via `was_replayed` whether the server answered from a previously completed request.

```ruby
result = client.create_notification_with_retry(notification, max_retries: 5, base_delay: 1.0)
puts "id: #{result.response.id}, replayed: #{result.was_replayed}"
```

> The notification-level `external_id` field is the **deprecated** idempotency mechanism — prefer `idempotency_key`. Don't confuse it with the `external_id` **alias label** (under `include_aliases`) used to target users.

## Full API reference

- [DefaultApi.md](https://github.com/OneSignal/onesignal-ruby-api/blob/master/docs/DefaultApi.md) — every endpoint, parameter, and model, with runnable examples.
- [OneSignal REST API reference](https://documentation.onesignal.com/reference)
