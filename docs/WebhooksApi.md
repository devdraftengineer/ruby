# Devdraft::WebhooksApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_controller_create**](WebhooksApi.md#webhook_controller_create) | **POST** /api/v0/webhooks | Create a new webhook |
| [**webhook_controller_find_all**](WebhooksApi.md#webhook_controller_find_all) | **GET** /api/v0/webhooks | Get all webhooks |
| [**webhook_controller_find_one**](WebhooksApi.md#webhook_controller_find_one) | **GET** /api/v0/webhooks/{id} | Get a webhook by id |
| [**webhook_controller_remove**](WebhooksApi.md#webhook_controller_remove) | **DELETE** /api/v0/webhooks/{id} | Delete a webhook |
| [**webhook_controller_update**](WebhooksApi.md#webhook_controller_update) | **PATCH** /api/v0/webhooks/{id} | Update a webhook |


## webhook_controller_create

> <WebhookResponseDto> webhook_controller_create(create_webhook_dto)

Create a new webhook

Creates a new webhook endpoint for receiving event notifications. Requires webhook:create scope.

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

api_instance = Devdraft::WebhooksApi.new
create_webhook_dto = Devdraft::CreateWebhookDto.new({name: 'Payment Notifications', url: 'https://api.example.com/webhooks/payments', is_active: true, encrypted: false}) # CreateWebhookDto | Webhook configuration details

begin
  # Create a new webhook
  result = api_instance.webhook_controller_create(create_webhook_dto)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_create: #{e}"
end
```

#### Using the webhook_controller_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponseDto>, Integer, Hash)> webhook_controller_create_with_http_info(create_webhook_dto)

```ruby
begin
  # Create a new webhook
  data, status_code, headers = api_instance.webhook_controller_create_with_http_info(create_webhook_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_dto** | [**CreateWebhookDto**](CreateWebhookDto.md) | Webhook configuration details |  |

### Return type

[**WebhookResponseDto**](WebhookResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhook_controller_find_all

> <Array<WebhookResponseDto>> webhook_controller_find_all(opts)

Get all webhooks

Retrieves a list of all webhooks for your application. Requires webhook:read scope.

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

api_instance = Devdraft::WebhooksApi.new
opts = {
  skip: 8.14, # Float | Number of records to skip (default: 0)
  take: 8.14 # Float | Number of records to return (default: 10)
}

begin
  # Get all webhooks
  result = api_instance.webhook_controller_find_all(opts)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_find_all: #{e}"
end
```

#### Using the webhook_controller_find_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebhookResponseDto>>, Integer, Hash)> webhook_controller_find_all_with_http_info(opts)

```ruby
begin
  # Get all webhooks
  data, status_code, headers = api_instance.webhook_controller_find_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebhookResponseDto>>
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_find_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Float** | Number of records to skip (default: 0) | [optional] |
| **take** | **Float** | Number of records to return (default: 10) | [optional] |

### Return type

[**Array&lt;WebhookResponseDto&gt;**](WebhookResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_controller_find_one

> <WebhookResponseDto> webhook_controller_find_one(id)

Get a webhook by id

Retrieves details for a specific webhook. Requires webhook:read scope.

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

api_instance = Devdraft::WebhooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook unique identifier (UUID)

begin
  # Get a webhook by id
  result = api_instance.webhook_controller_find_one(id)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_find_one: #{e}"
end
```

#### Using the webhook_controller_find_one_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponseDto>, Integer, Hash)> webhook_controller_find_one_with_http_info(id)

```ruby
begin
  # Get a webhook by id
  data, status_code, headers = api_instance.webhook_controller_find_one_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_find_one_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook unique identifier (UUID) |  |

### Return type

[**WebhookResponseDto**](WebhookResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_controller_remove

> <WebhookResponseDto> webhook_controller_remove(id)

Delete a webhook

Deletes a webhook configuration. Requires webhook:delete scope.

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

api_instance = Devdraft::WebhooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook unique identifier (UUID)

begin
  # Delete a webhook
  result = api_instance.webhook_controller_remove(id)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_remove: #{e}"
end
```

#### Using the webhook_controller_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponseDto>, Integer, Hash)> webhook_controller_remove_with_http_info(id)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.webhook_controller_remove_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook unique identifier (UUID) |  |

### Return type

[**WebhookResponseDto**](WebhookResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_controller_update

> <WebhookResponseDto> webhook_controller_update(id, update_webhook_dto)

Update a webhook

Updates an existing webhook configuration. Requires webhook:update scope.

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

api_instance = Devdraft::WebhooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook unique identifier (UUID)
update_webhook_dto = Devdraft::UpdateWebhookDto.new # UpdateWebhookDto | Webhook update details

begin
  # Update a webhook
  result = api_instance.webhook_controller_update(id, update_webhook_dto)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_update: #{e}"
end
```

#### Using the webhook_controller_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponseDto>, Integer, Hash)> webhook_controller_update_with_http_info(id, update_webhook_dto)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.webhook_controller_update_with_http_info(id, update_webhook_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling WebhooksApi->webhook_controller_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook unique identifier (UUID) |  |
| **update_webhook_dto** | [**UpdateWebhookDto**](UpdateWebhookDto.md) | Webhook update details |  |

### Return type

[**WebhookResponseDto**](WebhookResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

