# Devdraft::HealthResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Overall health status of the service. Returns \&quot;ok\&quot; when healthy, \&quot;error\&quot; when issues detected. |  |
| **timestamp** | **Time** | ISO 8601 timestamp when the health check was performed. |  |
| **version** | **String** | Current version of the API service. Useful for debugging and compatibility checks. |  |
| **database** | **String** | Database connectivity status. Shows \&quot;connected\&quot; when database is accessible, \&quot;error\&quot; when connection fails. |  |
| **message** | **String** | Human-readable message describing the current health status and any issues. |  |
| **authenticated** | **Boolean** | Indicates whether the request was properly authenticated. Always true for this endpoint since authentication is required. |  |

## Example

```ruby
require 'devdraft'

instance = Devdraft::HealthResponseDto.new(
  status: ok,
  timestamp: 2023-07-01T12:00Z,
  version: 1.0.0,
  database: connected,
  message: Service is up and running,
  authenticated: true
)
```

