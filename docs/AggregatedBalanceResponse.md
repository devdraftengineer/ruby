# Devdraft::AggregatedBalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The stablecoin currency |  |
| **total_balance** | **String** | The total aggregated balance across all wallets and chains |  |
| **balances** | **Array&lt;Object&gt;** | Detailed breakdown of balances by wallet and chain |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::AggregatedBalanceResponse.new(
  currency: usdc,
  total_balance: 5678.90,
  balances: null
)
```

