# Devdraft::PaymentLinkProductDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | UUID of the product to include in this payment link. Must be a valid product from your catalog. |  |
| **quantity** | **Integer** | Quantity of this product to include. Must be at least 1. | [default to 1] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::PaymentLinkProductDto.new(
  product_id: 123e4567-e89b-12d3-a456-426614174000,
  quantity: 2
)
```

