# OneSignal::JourneyListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Journey UUID. Read-only. | [optional] |
| **app_id** | **String** | UUID of the app the journey belongs to. Read-only. | [optional] |
| **name** | **String** | Journey name, up to 300 characters. | [optional] |
| **state** | **String** | Journey state. New journeys are created as draft. processing is transient while activation is in progress. archived is a journey that has been stopped. Change it through the state field on Update journey. | [optional] |
| **created_at** | **String** | ISO 8601 creation time. Read-only. | [optional] |
| **updated_at** | **String** | ISO 8601 last-update time. Read-only. | [optional] |
| **started_at** | **String** | ISO 8601 time the journey was activated, or null. Read-only. | [optional] |
| **archived_at** | **String** | ISO 8601 time the journey was archived, or null. Read-only. | [optional] |
| **created_source** | **String** | Origin of the journey, for example public_api or dashboard. Read-only. | [optional] |
| **schedule** | [**JourneySchedule**](JourneySchedule.md) |  | [optional] |
| **audience** | [**JourneyListAudience**](JourneyListAudience.md) |  | [optional] |
| **reentry_rules** | [**JourneyReentryRules**](JourneyReentryRules.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::JourneyListItem.new(
  id: nil,
  app_id: nil,
  name: nil,
  state: nil,
  created_at: nil,
  updated_at: nil,
  started_at: nil,
  archived_at: nil,
  created_source: nil,
  schedule: nil,
  audience: nil,
  reentry_rules: nil
)
```

