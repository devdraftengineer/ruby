# Devdraft::CreateDirectWalletTransferDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_id** | **String** | The ID of the bridge wallet to transfer from |  |
| **network** | **String** | The network to use for the transfer |  |
| **stable_coin_currency** | **String** | The stablecoin currency to use |  |
| **amount** | **Float** | The amount to transfer |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateDirectWalletTransferDto.new(
  wallet_id: null,
  network: null,
  stable_coin_currency: null,
  amount: null
)
```

