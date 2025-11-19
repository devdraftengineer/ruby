# Devdraft::CreateExternalStablecoinTransferDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_wallet_id** | **String** | The ID of the source bridge wallet |  |
| **source_currency** | **String** | The source currency |  |
| **destination_currency** | **String** | The destination currency |  |
| **blockchain_memo** | **String** | Blockchain memo for the transfer | [optional] |
| **beneficiary_id** | **String** | Beneficiary ID for the stablecoin transfer |  |
| **amount** | **Float** | The amount to transfer | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateExternalStablecoinTransferDto.new(
  source_wallet_id: null,
  source_currency: null,
  destination_currency: null,
  blockchain_memo: null,
  beneficiary_id: beneficiary_12345,
  amount: null
)
```

