# Devdraft::CreatePaymentLinkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Display title for the payment link. This appears on the checkout page and in customer communications. |  |
| **url** | **String** | Unique URL slug for the payment link. Can be a full URL or just the path segment. Must be unique within your account. |  |
| **description** | **String** | Detailed description of what the customer is purchasing. Supports markdown formatting. | [optional] |
| **cover_image** | **String** | Cover image URL | [optional] |
| **link_type** | **String** | Type of the payment link |  |
| **amount** | **Float** | Amount for the payment link | [optional] |
| **payment_for_id** | **String** | Payment for ID | [optional] |
| **customer_id** | **String** | Customer ID | [optional] |
| **payment_link_products** | [**Array&lt;PaymentLinkProductDto&gt;**](PaymentLinkProductDto.md) | Array of products in the payment link | [optional] |
| **is_for_all_product** | **Boolean** | Whether the payment link is for all products | [optional][default to false] |
| **allow_quantity_adjustment** | **Boolean** | Whether to allow quantity adjustment | [default to true] |
| **collect_tax** | **Boolean** | Whether to collect tax | [default to false] |
| **tax_id** | **String** | Tax ID | [optional] |
| **collect_address** | **Boolean** | Whether to collect address | [default to false] |
| **limit_payments** | **Boolean** | Whether to limit payments | [optional][default to false] |
| **max_payments** | **Float** | Maximum number of payments | [optional] |
| **custom_fields** | **Object** | Custom fields | [optional] |
| **allow_mobile_payment** | **Boolean** | Whether to allow mobile payment | [default to false] |
| **currency** | **String** | Currency | [default to &#39;usdc&#39;] |
| **expiration_date** | **Time** | Expiration date | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreatePaymentLinkDto.new(
  title: Premium Subscription,
  url: premium-subscription,
  description: Get access to all premium features with our monthly subscription plan. Includes priority support and advanced analytics.,
  cover_image: https://example.com/images/premium-subscription.jpg,
  link_type: PRODUCT,
  amount: 29.99,
  payment_for_id: sub_123456789,
  customer_id: 123e4567-e89b-12d3-a456-426614174002,
  payment_link_products: [{&quot;productId&quot;:&quot;123e4567-e89b-12d3-a456-426614174003&quot;,&quot;quantity&quot;:1},{&quot;productId&quot;:&quot;123e4567-e89b-12d3-a456-426614174004&quot;,&quot;quantity&quot;:2}],
  is_for_all_product: false,
  allow_quantity_adjustment: true,
  collect_tax: true,
  tax_id: 123e4567-e89b-12d3-a456-426614174005,
  collect_address: true,
  limit_payments: true,
  max_payments: 100,
  custom_fields: {&quot;customField1&quot;:&quot;value1&quot;,&quot;customField2&quot;:&quot;value2&quot;},
  allow_mobile_payment: true,
  currency: usdc,
  expiration_date: 2024-12-31T23:59:59Z
)
```

