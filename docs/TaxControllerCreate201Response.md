# Devdraft::TaxControllerCreate201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **percentage** | **Float** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::TaxControllerCreate201Response.new(
  id: tax_123e4567-e89b-12d3-a456-426614174000,
  name: Sales Tax,
  description: Standard sales tax for retail transactions,
  percentage: 8.5,
  active: true,
  created_at: null,
  updated_at: null
)
```

