# OneSignal::UpdateTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Updated name of the template. | [optional] |
| **contents** | [**LanguageStringMap**](LanguageStringMap.md) |  | [optional] |
| **is_email** | **Boolean** | Set true for an Email template. | [optional] |
| **email_subject** | **String** | Subject of the email. | [optional] |
| **email_body** | **String** | Body of the email (HTML supported). | [optional] |
| **is_sms** | **Boolean** | Set true for an SMS template. | [optional] |
| **dynamic_content** | **String** | JSON string for dynamic content personalization. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateTemplateRequest.new(
  name: null,
  contents: null,
  is_email: null,
  email_subject: null,
  email_body: null,
  is_sms: null,
  dynamic_content: null
)
```

