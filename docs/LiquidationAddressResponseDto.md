# Devdraft::LiquidationAddressResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the liquidation address |  |
| **state** | **String** | Current state of the liquidation address |  |
| **customer_id** | **String** | Customer ID this liquidation address belongs to |  |
| **chain** | **String** | Blockchain chain |  |
| **currency** | **String** | Currency |  |
| **address** | **String** | Liquidation address |  |
| **external_account_id** | **String** | External account ID | [optional] |
| **prefunded_account_id** | **String** | Prefunded account ID | [optional] |
| **bridge_wallet_id** | **String** | Bridge wallet ID | [optional] |
| **destination_payment_rail** | **String** | Destination payment rail | [optional] |
| **destination_currency** | **String** | Destination currency | [optional] |
| **custom_developer_fee_percent** | **String** | Custom developer fee percent | [optional] |
| **created_at** | **String** | Creation timestamp |  |
| **updated_at** | **String** | Last update timestamp |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::LiquidationAddressResponseDto.new(
  id: la_generated_id_123,
  state: active,
  customer_id: cust_123,
  chain: ethereum,
  currency: usdc,
  address: 0x4d0280da2f2fDA5103914bCc5aad114743152A9c,
  external_account_id: null,
  prefunded_account_id: null,
  bridge_wallet_id: null,
  destination_payment_rail: null,
  destination_currency: null,
  custom_developer_fee_percent: null,
  created_at: null,
  updated_at: null
)
```

