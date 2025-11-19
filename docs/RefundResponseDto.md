# Devdraft::RefundResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Refund ID |  |
| **payment_id** | **String** | Original payment ID |  |
| **amount** | **Float** | The amount refunded |  |
| **status** | **String** | Refund status |  |
| **timestamp** | **String** | Timestamp of the refund |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::RefundResponseDto.new(
  id: ref_12345abcdef,
  payment_id: pay_12345abcdef,
  amount: 100.5,
  status: succeeded,
  timestamp: 2023-07-01T12:00:00.000Z
)
```

