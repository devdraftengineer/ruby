# Devdraft::PaymentRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount to charge |  |
| **currency** | **String** | The currency code |  |
| **description** | **String** | Description of the payment |  |
| **customer_id** | **String** | Customer reference ID | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::PaymentRequestDto.new(
  amount: 100.5,
  currency: USD,
  description: Test payment for API,
  customer_id: cus_12345
)
```

