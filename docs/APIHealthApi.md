# Devdraft::APIHealthApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**health_controller_check_v0**](APIHealthApi.md#health_controller_check_v0) | **GET** /api/v0/health | Authenticated health check endpoint |
| [**health_controller_public_health_check_v0**](APIHealthApi.md#health_controller_public_health_check_v0) | **GET** /api/v0/health/public | Public health check endpoint |


## health_controller_check_v0

> <HealthResponseDto> health_controller_check_v0

Authenticated health check endpoint

### Examples

```ruby
require 'time'
require 'devdraft'
# setup authorization
Devdraft.configure do |config|
  # Configure API key authorization: x-client-secret
  config.api_key['x-client-secret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-client-secret'] = 'Bearer'

  # Configure API key authorization: x-client-key
  config.api_key['x-client-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-client-key'] = 'Bearer'
end

api_instance = Devdraft::APIHealthApi.new

begin
  # Authenticated health check endpoint
  result = api_instance.health_controller_check_v0
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling APIHealthApi->health_controller_check_v0: #{e}"
end
```

#### Using the health_controller_check_v0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthResponseDto>, Integer, Hash)> health_controller_check_v0_with_http_info

```ruby
begin
  # Authenticated health check endpoint
  data, status_code, headers = api_instance.health_controller_check_v0_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling APIHealthApi->health_controller_check_v0_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthResponseDto**](HealthResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## health_controller_public_health_check_v0

> <PublicHealthResponseDto> health_controller_public_health_check_v0

Public health check endpoint

### Examples

```ruby
require 'time'
require 'devdraft'

api_instance = Devdraft::APIHealthApi.new

begin
  # Public health check endpoint
  result = api_instance.health_controller_public_health_check_v0
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling APIHealthApi->health_controller_public_health_check_v0: #{e}"
end
```

#### Using the health_controller_public_health_check_v0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicHealthResponseDto>, Integer, Hash)> health_controller_public_health_check_v0_with_http_info

```ruby
begin
  # Public health check endpoint
  data, status_code, headers = api_instance.health_controller_public_health_check_v0_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicHealthResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling APIHealthApi->health_controller_public_health_check_v0_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PublicHealthResponseDto**](PublicHealthResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

