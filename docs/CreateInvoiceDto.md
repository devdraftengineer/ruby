# Devdraft::CreateInvoiceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the invoice |  |
| **email** | **String** | Email address |  |
| **customer_id** | **String** | Customer ID |  |
| **currency** | **String** | Currency for the invoice |  |
| **items** | **Object** |  |  |
| **due_date** | **Time** | Due date of the invoice |  |
| **delivery** | **String** | Delivery method |  |
| **payment_link** | **Boolean** | Whether to generate a payment link |  |
| **payment_methods** | **Array&lt;String&gt;** | Array of accepted payment methods |  |
| **status** | **String** | Invoice status |  |
| **address** | **String** | Address | [optional] |
| **phone_number** | **String** | Phone number | [optional] |
| **send_date** | **Time** | Send date | [optional] |
| **logo** | **String** | Logo URL | [optional] |
| **partial_payment** | **Boolean** | Allow partial payments |  |
| **tax_id** | **String** | Tax ID | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateInvoiceDto.new(
  name: null,
  email: null,
  customer_id: null,
  currency: null,
  items: null,
  due_date: null,
  delivery: null,
  payment_link: null,
  payment_methods: null,
  status: null,
  address: null,
  phone_number: null,
  send_date: null,
  logo: null,
  partial_payment: null,
  tax_id: null
)
```

