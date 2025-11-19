# Devdraft::CreateWebhookDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the webhook for identification purposes |  |
| **url** | **String** | URL where webhook events will be sent |  |
| **is_active** | **Boolean** | Whether the webhook is active and will receive events | [default to true] |
| **signing_secret** | **String** | Secret key used to sign webhook payloads for verification | [optional] |
| **encrypted** | **Boolean** | Whether webhook payloads should be encrypted | [default to false] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateWebhookDto.new(
  name: Payment Notifications,
  url: https://api.example.com/webhooks/payments,
  is_active: true,
  signing_secret: whsec_123456789,
  encrypted: false
)
```

