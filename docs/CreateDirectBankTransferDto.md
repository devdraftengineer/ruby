# Devdraft::CreateDirectBankTransferDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_id** | **String** | The ID of the bridge wallet to transfer from |  |
| **payment_rail** | **String** | The payment rail to use |  |
| **destination_currency** | **String** | The destination currency |  |
| **source_currency** | **String** | The source currency |  |
| **amount** | **Float** | The amount to transfer |  |
| **wire_message** | **String** | Wire transfer message | [optional] |
| **sepa_reference** | **String** | SEPA transfer reference | [optional] |
| **ach_reference** | **String** | ACH transfer reference | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateDirectBankTransferDto.new(
  wallet_id: null,
  payment_rail: null,
  destination_currency: null,
  source_currency: null,
  amount: null,
  wire_message: null,
  sepa_reference: null,
  ach_reference: null
)
```

