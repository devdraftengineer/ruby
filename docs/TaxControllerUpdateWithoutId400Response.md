# Devdraft::TaxControllerUpdateWithoutId400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **status_code** | **Float** |  | [optional] |

## Example

```ruby
require 'devdraft'

instance = Devdraft::TaxControllerUpdateWithoutId400Response.new(
  message: Tax ID is required in the URL path. Use PUT /api/v0/taxes/{id} to update a specific tax.,
  error: Bad Request,
  status_code: 400
)
```

