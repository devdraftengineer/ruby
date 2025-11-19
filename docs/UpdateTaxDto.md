# Devdraft::UpdateTaxDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Tax name for identification and display purposes | [optional] |
| **description** | **String** | Detailed description of what this tax covers | [optional] |
| **percentage** | **Float** | Tax rate as a percentage (0-100) | [optional] |
| **active** | **Boolean** | Whether this tax is currently active and can be applied | [optional] |
| **app_ids** | **Array&lt;String&gt;** | Array of app IDs where this tax should be available | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::UpdateTaxDto.new(
  name: Updated Sales Tax,
  description: Updated description for retail sales tax,
  percentage: 9.5,
  active: false,
  app_ids: [&quot;app_123e4567-e89b-12d3-a456-426614174000&quot;]
)
```

