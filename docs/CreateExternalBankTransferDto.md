# Devdraft::CreateExternalBankTransferDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_wallet_id** | **String** | The ID of the source bridge wallet |  |
| **source_currency** | **String** | The source currency |  |
| **destination_currency** | **String** | The destination currency |  |
| **destination_payment_rail** | [**BridgeFiatPaymentRail**](BridgeFiatPaymentRail.md) | The destination payment rail (fiat payment method) |  |
| **external_account_id** | **String** | The external account ID for the bank transfer |  |
| **amount** | **Float** | The amount to transfer | [optional] |
| **wire_message** | **String** | Wire transfer message (1-256 characters, only for wire transfers) | [optional] |
| **sepa_reference** | **String** | SEPA reference message (6-140 characters, only for SEPA transfers) | [optional] |
| **swift_reference** | **String** | SWIFT reference message (1-190 characters, only for SWIFT transfers) | [optional] |
| **spei_reference** | **String** | SPEI reference message (1-40 characters, only for SPEI transfers) | [optional] |
| **swift_charges** | **String** | SWIFT charges bearer (only for SWIFT transfers) | [optional] |
| **ach_reference** | **String** | ACH reference message (1-10 characters, only for ACH transfers) | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateExternalBankTransferDto.new(
  source_wallet_id: null,
  source_currency: null,
  destination_currency: null,
  destination_payment_rail: null,
  external_account_id: null,
  amount: null,
  wire_message: null,
  sepa_reference: null,
  swift_reference: null,
  spei_reference: null,
  swift_charges: null,
  ach_reference: null
)
```

