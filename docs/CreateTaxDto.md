# Devdraft::CreateTaxDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Tax name. Used to identify and reference this tax rate. |  |
| **description** | **String** | Optional description explaining what this tax covers. | [optional] |
| **percentage** | **Float** | Tax percentage rate. Must be between 0 and 100. |  |
| **active** | **Boolean** | Whether this tax is currently active and can be applied. | [optional][default to true] |
| **app_ids** | **Array&lt;String&gt;** | Array of app IDs where this tax should be available. If not provided, tax will be available for the current app. | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::CreateTaxDto.new(
  name: Sales Tax,
  description: Standard sales tax for retail transactions,
  percentage: 8.5,
  active: true,
  app_ids: [&quot;app_123e4567-e89b-12d3-a456-426614174000&quot;]
)
```

