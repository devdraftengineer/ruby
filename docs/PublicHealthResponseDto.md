# Devdraft::PublicHealthResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Basic health status of the service. Returns \&quot;ok\&quot; when the service is responding. |  |
| **timestamp** | **Time** | ISO 8601 timestamp when the health check was performed. |  |
| **version** | **String** | Current version of the API service. |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::PublicHealthResponseDto.new(
  status: ok,
  timestamp: 2023-07-01T12:00Z,
  version: 1.0.0
)
```

