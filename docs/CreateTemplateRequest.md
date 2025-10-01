# OneSignal::CreateTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Your OneSignal App ID in UUID v4 format. |  |
| **name** | **String** | Name of the template. |  |
| **contents** | [**LanguageStringMap**](LanguageStringMap.md) |  |  |
| **is_email** | **Boolean** | Set true for an Email template. | [optional] |
| **email_subject** | **String** | Subject of the email. | [optional] |
| **email_body** | **String** | Body of the email (HTML supported). | [optional] |
| **is_sms** | **Boolean** | Set true for an SMS template. | [optional] |
| **dynamic_content** | **String** | JSON string for dynamic content personalization. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::CreateTemplateRequest.new(
  app_id: null,
  name: null,
  contents: null,
  is_email: null,
  email_subject: null,
  email_body: null,
  is_sms: null,
  dynamic_content: null
)
```

