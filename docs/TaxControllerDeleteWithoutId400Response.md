# Devdraft::TaxControllerDeleteWithoutId400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **status_code** | **Float** |  | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::TaxControllerDeleteWithoutId400Response.new(
  message: Tax ID is required in the URL path. Use DELETE /api/v0/taxes/{id} to delete a specific tax.,
  error: Bad Request,
  status_code: 400
)
```

