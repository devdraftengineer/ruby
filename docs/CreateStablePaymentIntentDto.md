# Devdraft::CreateStablePaymentIntentDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_currency** | [**StableCoinCurrency**](StableCoinCurrency.md) | The stablecoin currency to convert FROM. This is the currency the customer will pay with. |  |
| **source_network** | [**BridgePaymentRail**](BridgePaymentRail.md) | The blockchain network where the source currency resides. Determines gas fees and transaction speed. |  |
| **destination_currency** | [**StableCoinCurrency**](StableCoinCurrency.md) | The stablecoin currency to convert TO. If omitted, defaults to the same as source currency (cross-chain transfer). | [optional] |
| **destination_network** | [**BridgePaymentRail**](BridgePaymentRail.md) | The blockchain network where the converted currency will be delivered. Must support the destination currency. |  |
| **destination_address** | **String** | The wallet address where converted funds will be sent. Supports Ethereum (0x...) and Solana address formats. | [optional] |
| **amount** | **String** | Payment amount in the source currency. Omit for flexible amount payments where users specify the amount during checkout. | [optional] |
| **customer_first_name** | **String** | Customer&#39;s first name. Used for transaction records and compliance. Required for amounts over $1000. | [optional] |
| **customer_last_name** | **String** | Customer&#39;s last name. Used for transaction records and compliance. Required for amounts over $1000. | [optional] |
| **customer_email** | **String** | Customer&#39;s email address. Used for transaction notifications and receipts. Highly recommended for all transactions. | [optional] |
| **customer_address** | **String** | Customer&#39;s full address. Required for compliance in certain jurisdictions and high-value transactions. | [optional] |
| **customer_country** | **String** | Customer&#39;s country of residence. Used for compliance and tax reporting. | [optional] |
| **customer_country_iso** | **String** | Customer&#39;s country ISO 3166-1 alpha-2 code. Used for automated compliance checks. | [optional] |
| **customer_province** | **String** | Customer&#39;s state or province. Required for US and Canadian customers. | [optional] |
| **customer_province_iso** | **String** | Customer&#39;s state or province ISO code. Used for automated tax calculations. | [optional] |
| **phone_number** | **String** | Customer&#39;s phone number with country code. Used for SMS notifications and verification. | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateStablePaymentIntentDto.new(
  source_currency: null,
  source_network: null,
  destination_currency: null,
  destination_network: null,
  destination_address: 0x742d35Cc6634C0532925a3b8D4C9db96c4b4d8e1,
  amount: 100.50,
  customer_first_name: John,
  customer_last_name: Doe,
  customer_email: john.doe@example.com,
  customer_address: 123 Main St, New York, NY 10001,
  customer_country: United States,
  customer_country_iso: US,
  customer_province: New York,
  customer_province_iso: NY,
  phone_number: +1-555-123-4567
)
```

