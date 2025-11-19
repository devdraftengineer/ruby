# Devdraft::ExchangeRateResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Source currency code (USD for USDC) |  |
| **to** | **String** | Target currency code (EUR for EURC) |  |
| **midmarket_rate** | **String** | Mid-market exchange rate from source to target currency |  |
| **buy_rate** | **String** | Rate for buying target currency (what you get when converting from source to target) |  |
| **sell_rate** | **String** | Rate for selling target currency (what you pay when converting from target to source) |  |
| **timestamp** | **String** | Timestamp when the exchange rate was last updated | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::ExchangeRateResponseDto.new(
  from: usd,
  to: eur,
  midmarket_rate: 0.85000,
  buy_rate: 0.84500,
  sell_rate: 0.85500,
  timestamp: 2024-01-15T10:30:00Z
)
```

