# OneSignal::TemplateResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **content** | **Hash&lt;String, Object&gt;** | Rendered content and channel/platform flags for the template. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::TemplateResource.new(
  id: null,
  name: null,
  created_at: null,
  updated_at: null,
  channel: null,
  content: null
)
```

