# Devdraft::UpdateCustomerDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | Customer&#39;s first name. Used for personalization and legal documentation. | [optional] |
| **last_name** | **String** | Customer&#39;s last name. Used for personalization and legal documentation. | [optional] |
| **email** | **String** | Customer&#39;s email address. Used for notifications, receipts, and account management. Must be a valid email format. | [optional] |
| **phone_number** | **String** | Customer&#39;s phone number. Used for SMS notifications and verification. Include country code for international numbers. | [optional] |
| **customer_type** | [**CustomerType**](CustomerType.md) | Type of customer account. Determines available features and compliance requirements. | [optional] |
| **status** | [**CustomerStatus**](CustomerStatus.md) | Current status of the customer account. Controls access to services and features. | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::UpdateCustomerDto.new(
  first_name: John,
  last_name: Doe,
  email: john.doe@example.com,
  phone_number: +1-555-123-4567,
  customer_type: null,
  status: null
)
```

