# Devdraft::AllBalancesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usdc** | [**AggregatedBalanceResponse**](AggregatedBalanceResponse.md) | USDC balance aggregation |  |
| **eurc** | [**AggregatedBalanceResponse**](AggregatedBalanceResponse.md) | EURC balance aggregation |  |
| **total_usd_value** | **String** | Total value in USD equivalent |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::AllBalancesResponse.new(
  usdc: null,
  eurc: null,
  total_usd_value: 6890.45
)
```

