# OneSignal::Journey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Journey UUID. Read-only. | [optional] |
| **app_id** | **String** | UUID of the app the journey belongs to. Read-only. | [optional] |
| **name** | **String** | Journey name, up to 300 characters. | [optional] |
| **description** | **String** | Journey description, up to 1024 characters. Defaults to an empty string. | [optional] |
| **state** | **String** | Journey state. New journeys are created as draft. processing is transient while activation is in progress. archived is a journey that has been stopped. Change it through the state field on Update journey. | [optional] |
| **created_at** | **String** | ISO 8601 creation time. Read-only. | [optional] |
| **updated_at** | **String** | ISO 8601 last-update time. Read-only. | [optional] |
| **started_at** | **String** | ISO 8601 time the journey was activated, or null. Read-only. May stay null briefly after you set state to active: activation is enqueued, and started_at populates once the journey finishes processing. | [optional] |
| **archived_at** | **String** | ISO 8601 time the journey was archived, or null. Read-only. | [optional] |
| **created_source** | **String** | Origin of the journey, for example public_api or dashboard. Read-only. | [optional] |
| **audience** | [**JourneyAudience**](JourneyAudience.md) |  | [optional] |
| **early_exit** | [**JourneyEarlyExit**](JourneyEarlyExit.md) |  | [optional] |
| **reentry_rules** | [**JourneyReentryRules**](JourneyReentryRules.md) |  | [optional] |
| **schedule** | [**JourneySchedule**](JourneySchedule.md) |  | [optional] |
| **nodes** | [**Array&lt;JourneyNode&gt;**](JourneyNode.md) | Ordered list of journey nodes. | [optional] |
| **concurrency_key** | **String** | Opaque optimistic-concurrency token. Read-only. Pass it back on update to guard against overwriting a concurrent change (409). Send it back exactly as read; do not construct or parse it. | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::Journey.new(
  id: nil,
  app_id: nil,
  name: nil,
  description: nil,
  state: nil,
  created_at: nil,
  updated_at: nil,
  started_at: nil,
  archived_at: nil,
  created_source: nil,
  audience: nil,
  early_exit: nil,
  reentry_rules: nil,
  schedule: nil,
  nodes: nil,
  concurrency_key: nil
)
```

