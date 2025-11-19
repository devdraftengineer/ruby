# Devdraft::CreateLiquidationAddressDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** | The blockchain chain for the liquidation address |  |
| **currency** | **String** | The currency for the liquidation address |  |
| **address** | **String** | The liquidation address on the blockchain |  |
| **external_account_id** | **String** | External bank account to send funds to | [optional] |
| **prefunded_account_id** | **String** | Developer&#39;s prefunded account id | [optional] |
| **bridge_wallet_id** | **String** | Bridge Wallet to send funds to | [optional] |
| **destination_payment_rail** | [**BridgePaymentRail**](BridgePaymentRail.md) | Payment rail for sending funds | [optional] |
| **destination_currency** | [**DestinationCurrency**](DestinationCurrency.md) | Currency for sending funds | [optional] |
| **destination_wire_message** | **String** | Message for wire transfers | [optional] |
| **destination_sepa_reference** | **String** | Reference for SEPA transactions | [optional] |
| **destination_ach_reference** | **String** | Reference for ACH transactions | [optional] |
| **destination_address** | **String** | Crypto wallet address for crypto transfers | [optional] |
| **destination_blockchain_memo** | **String** | Memo for blockchain transactions | [optional] |
| **return_address** | **String** | Address to return funds on failed transactions (Not supported on Stellar) | [optional] |
| **custom_developer_fee_percent** | **String** | Custom developer fee percentage (Base 100 percentage: 10.2% &#x3D; \&quot;10.2\&quot;) | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateLiquidationAddressDto.new(
  chain: ethereum,
  currency: usdc,
  address: 0x4d0280da2f2fDA5103914bCc5aad114743152A9c,
  external_account_id: ext_123,
  prefunded_account_id: pf_acc_123,
  bridge_wallet_id: bw_123,
  destination_payment_rail: null,
  destination_currency: null,
  destination_wire_message: Liquidation payment for customer,
  destination_sepa_reference: SEPA-REF-123456,
  destination_ach_reference: ACH123,
  destination_address: 0x1234567890abcdef1234567890abcdef12345678,
  destination_blockchain_memo: liquidation-memo-123,
  return_address: 0xabcdefabcdefabcdefabcdefabcdefabcdef,
  custom_developer_fee_percent: 2.5
)
```

