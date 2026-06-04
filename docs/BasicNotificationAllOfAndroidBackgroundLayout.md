# OneSignal::BasicNotificationAllOfAndroidBackgroundLayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** | Asset file, android resource name, or URL to remote image. | [optional] |
| **headings_color** | **String** | Title text color ARGB Hex format. Example(Blue) \&quot;FF0000FF\&quot;. | [optional] |
| **contents_color** | **String** | Body text color ARGB Hex format. Example(Red) \&quot;FFFF0000\&quot;. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::BasicNotificationAllOfAndroidBackgroundLayout.new(
  image: null,
  headings_color: null,
  contents_color: null
)
```

