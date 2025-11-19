# Devdraft::CreateBankPaymentIntentDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_payment_rail** | [**BridgePaymentRail**](BridgePaymentRail.md) | The banking payment method to use for the transfer. Determines processing time and fees. |  |
| **source_currency** | [**FiatCurrency**](FiatCurrency.md) | The fiat currency to convert FROM. Must match the currency of the source payment rail. |  |
| **destination_currency** | [**StableCoinCurrency**](StableCoinCurrency.md) | The stablecoin currency to convert TO. The customer will receive this currency. |  |
| **destination_network** | [**BridgePaymentRail**](BridgePaymentRail.md) | The blockchain network where the stablecoin will be delivered. Must support the destination currency. |  |
| **destination_address** | **String** | Destination wallet address. Supports Ethereum (0x...) and Solana address formats. | [optional] |
| **amount** | **String** | Payment amount (optional for flexible amount) | [optional] |
| **customer_first_name** | **String** | Customer first name | [optional] |
| **customer_last_name** | **String** | Customer last name | [optional] |
| **customer_email** | **String** | Customer email address | [optional] |
| **customer_address** | **String** | Customer address | [optional] |
| **customer_country** | **String** | Customer country | [optional] |
| **customer_country_iso** | **String** | Customer country ISO code | [optional] |
| **customer_province** | **String** | Customer province/state | [optional] |
| **customer_province_iso** | **String** | Customer province/state ISO code | [optional] |
| **phone_number** | **String** | Customer phone number | [optional] |
| **wire_message** | **String** | Wire transfer message (for WIRE transfers) | [optional] |
| **sepa_reference** | **String** | SEPA reference (for SEPA transfers) | [optional] |
| **ach_reference** | **String** | ACH reference (for ACH transfers) | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateBankPaymentIntentDto.new(
  source_payment_rail: null,
  source_currency: null,
  destination_currency: null,
  destination_network: null,
  destination_address: 0x742d35Cc6634C0532925a3b8D4C9db96c4b4d8e1,
  amount: 1000.00,
  customer_first_name: John,
  customer_last_name: Doe,
  customer_email: john.doe@example.com,
  customer_address: 123 Main St, New York, NY 10001,
  customer_country: United States,
  customer_country_iso: US,
  customer_province: New York,
  customer_province_iso: NY,
  phone_number: +1-555-123-4567,
  wire_message: Payment for invoice #12345,
  sepa_reference: REF-123456789,
  ach_reference: ACH123456
)
```

