# OneSignal::UpdatePlayerTagsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Object** | Custom tags for the device record.  Only support string key value pairs.  Does not support arrays or other nested objects.  Example &#x60;{\&quot;foo\&quot;:\&quot;bar\&quot;,\&quot;this\&quot;:\&quot;that\&quot;}&#x60;. Limitations: - 100 tags per call - Android SDK users: tags cannot be removed or changed via API if set through SDK sendTag methods. Recommended to only tag devices with 1 kilobyte of ata Please consider using your own Database to save more than 1 kilobyte of data.  See: Internal Database &amp; CRM  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::UpdatePlayerTagsRequestBody.new(
  tags: null
)
```

