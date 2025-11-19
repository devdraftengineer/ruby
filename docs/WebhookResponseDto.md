# Devdraft::WebhookResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the webhook |  |
| **name** | **String** | Name of the webhook |  |
| **url** | **String** | URL where webhook events are sent |  |
| **is_active** | **Boolean** | Whether the webhook is currently active |  |
| **encrypted** | **Boolean** | Whether webhook payloads are encrypted |  |
| **created_at** | **String** | Timestamp when the webhook was created |  |
| **updated_at** | **String** | Timestamp when the webhook was last updated |  |
| **delivery_stats** | **Object** | Webhook delivery statistics |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::WebhookResponseDto.new(
  id: 550e8400-e29b-41d4-a716-446655440000,
  name: Payment Notifications,
  url: https://api.example.com/webhooks/payments,
  is_active: true,
  encrypted: false,
  created_at: 2024-03-20T12:00:00.000Z,
  updated_at: 2024-03-20T12:00:00.000Z,
  delivery_stats: {&quot;total_events&quot;:150,&quot;successful_deliveries&quot;:145,&quot;failed_deliveries&quot;:5,&quot;last_delivery&quot;:&quot;2024-03-20T11:55:00.000Z&quot;}
)
```

