# OneSignal::SubscriptionNotificationTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_subscription_ids** | **Array&lt;String&gt;** | Specific subscription ids to send your notification to. _Does not require API Auth Key._ Not compatible with any other targeting parameters. Example: [\&quot;1dd608f2-c6a1-11e3-851d-000c2940e62c\&quot;] Limit of 2,000 entries per REST API call  | [optional] |
| **include_email_tokens** | **Array&lt;String&gt;** | Recommended for Sending Emails - Target specific email addresses. If an email does not correspond to an existing user, a new user will be created. Example: nick@catfac.ts Limit of 2,000 entries per REST API call  | [optional] |
| **include_phone_numbers** | **Array&lt;String&gt;** | Recommended for Sending SMS - Target specific phone numbers. The phone number should be in the E.164 format. Phone number should be an existing subscriber on OneSignal. Refer our docs to learn how to add phone numbers to OneSignal. Example phone number: +1999999999 Limit of 2,000 entries per REST API call  | [optional] |
| **include_ios_tokens** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using iOS device tokens. Warning: Only works with Production tokens. All non-alphanumeric characters must be removed from each token. If a token does not correspond to an existing user, a new user will be created. Example: ce777617da7f548fe7a9ab6febb56cf39fba6d38203... Limit of 2,000 entries per REST API call  | [optional] |
| **include_wp_wns_uris** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Windows URIs. If a token does not correspond to an existing user, a new user will be created. Example: http://s.notify.live.net/u/1/bn1/HmQAAACPaLDr-... Limit of 2,000 entries per REST API call  | [optional] |
| **include_amazon_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Amazon ADM registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: amzn1.adm-registration.v1.XpvSSUk0Rc3hTVVV... Limit of 2,000 entries per REST API call  | [optional] |
| **include_chrome_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Chrome App registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call  | [optional] |
| **include_chrome_web_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Chrome Web Push registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call  | [optional] |
| **include_android_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Android device registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call  | [optional] |
| **include_aliases** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Target specific users by aliases assigned via API. An alias can be an external_id, onesignal_id, or a custom alias. Accepts an object where keys are alias labels and values are arrays of alias IDs to include Example usage: { \&quot;external_id\&quot;: [\&quot;exId1\&quot;, \&quot;extId2\&quot;], \&quot;internal_label\&quot;: [\&quot;id1\&quot;, \&quot;id2\&quot;] } Not compatible with any other targeting parameters. REQUIRED: REST API Key Authentication Limit of 2,000 entries per REST API call Note: If targeting push, email, or sms subscribers with same ids, use with target_channel to indicate you are sending a push or email or sms. | [optional] |
| **target_channel** | **String** |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::SubscriptionNotificationTarget.new(
  include_subscription_ids: null,
  include_email_tokens: null,
  include_phone_numbers: null,
  include_ios_tokens: null,
  include_wp_wns_uris: null,
  include_amazon_reg_ids: null,
  include_chrome_reg_ids: null,
  include_chrome_web_reg_ids: null,
  include_android_reg_ids: null,
  include_aliases: null,
  target_channel: null
)
```

