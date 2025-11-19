# Devdraft::CreateStablecoinConversionDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_id** | **String** | The ID of the bridge wallet to use |  |
| **source_network** | **String** | The source network |  |
| **source_currency** | **String** | The source currency |  |
| **destination_currency** | **String** | The destination currency |  |
| **amount** | **Float** | The amount to convert |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateStablecoinConversionDto.new(
  wallet_id: null,
  source_network: null,
  source_currency: null,
  destination_currency: null,
  amount: null
)
```

