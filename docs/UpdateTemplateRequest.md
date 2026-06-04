# OneSignal::UpdateTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Updated name of the template. | [optional] |
| **contents** | [**LanguageStringMap**](LanguageStringMap.md) |  | [optional] |
| **headings** | [**LanguageStringMap**](LanguageStringMap.md) |  | [optional] |
| **subtitle** | [**LanguageStringMap**](LanguageStringMap.md) |  | [optional] |
| **is_email** | **Boolean** | Set true for an Email template. | [optional] |
| **email_subject** | **String** | Subject of the email. | [optional] |
| **email_body** | **String** | Body of the email (HTML supported). | [optional] |
| **email_bcc** | **Array&lt;String&gt;** | BCC recipients for the email template. Maximum 5 addresses. Only supported when the email service provider is OneSignal Email. | [optional] |
| **is_sms** | **Boolean** | Set true for an SMS template. | [optional] |
| **dynamic_content** | **String** | JSON string for dynamic content personalization. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdateTemplateRequest.new(
  name: null,
  contents: null,
  headings: null,
  subtitle: null,
  is_email: null,
  email_subject: null,
  email_body: null,
  email_bcc: null,
  is_sms: null,
  dynamic_content: null
)
```

