# Devdraft::PaymentResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Payment ID |  |
| **amount** | **Float** | The amount charged |  |
| **currency** | **String** | The currency code |  |
| **status** | **String** | Payment status |  |
| **timestamp** | **String** | Timestamp of the payment |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::PaymentResponseDto.new(
  id: pay_12345abcdef,
  amount: 100.5,
  currency: USD,
  status: succeeded,
  timestamp: 2023-07-01T12:00:00.000Z
)
```

