# Devdraft::PaymentLinksApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payment_links_controller_create**](PaymentLinksApi.md#payment_links_controller_create) | **POST** /api/v0/payment-links | Create a new payment link |
| [**payment_links_controller_find_all**](PaymentLinksApi.md#payment_links_controller_find_all) | **GET** /api/v0/payment-links | Get all payment links |
| [**payment_links_controller_find_one**](PaymentLinksApi.md#payment_links_controller_find_one) | **GET** /api/v0/payment-links/{id} | Get a payment link by ID |
| [**payment_links_controller_update**](PaymentLinksApi.md#payment_links_controller_update) | **PUT** /api/v0/payment-links/{id} | Update a payment link |


## payment_links_controller_create

> payment_links_controller_create(create_payment_link_dto)

Create a new payment link

Creates a new payment link with the provided details. Supports both simple one-time payments and complex product bundles.

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

api_instance = Devdraft::PaymentLinksApi.new
create_payment_link_dto = Devdraft::CreatePaymentLinkDto.new({title: 'Premium Subscription', url: 'premium-subscription', link_type: 'INVOICE', allow_quantity_adjustment: true, collect_tax: true, collect_address: true, allow_mobile_payment: true, currency: 'usdc'}) # CreatePaymentLinkDto | Payment link creation data

begin
  # Create a new payment link
  api_instance.payment_links_controller_create(create_payment_link_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_create: #{e}"
end
```

#### Using the payment_links_controller_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_links_controller_create_with_http_info(create_payment_link_dto)

```ruby
begin
  # Create a new payment link
  data, status_code, headers = api_instance.payment_links_controller_create_with_http_info(create_payment_link_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payment_link_dto** | [**CreatePaymentLinkDto**](CreatePaymentLinkDto.md) | Payment link creation data |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## payment_links_controller_find_all

> payment_links_controller_find_all(opts)

Get all payment links

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

api_instance = Devdraft::PaymentLinksApi.new
opts = {
  skip: 'skip_example', # String | Number of records to skip (must be non-negative)
  take: 'take_example' # String | Number of records to take (must be positive)
}

begin
  # Get all payment links
  api_instance.payment_links_controller_find_all(opts)
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_find_all: #{e}"
end
```

#### Using the payment_links_controller_find_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_links_controller_find_all_with_http_info(opts)

```ruby
begin
  # Get all payment links
  data, status_code, headers = api_instance.payment_links_controller_find_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_find_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **String** | Number of records to skip (must be non-negative) | [optional] |
| **take** | **String** | Number of records to take (must be positive) | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## payment_links_controller_find_one

> payment_links_controller_find_one(id)

Get a payment link by ID

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

api_instance = Devdraft::PaymentLinksApi.new
id = 'id_example' # String | Payment Link ID

begin
  # Get a payment link by ID
  api_instance.payment_links_controller_find_one(id)
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_find_one: #{e}"
end
```

#### Using the payment_links_controller_find_one_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_links_controller_find_one_with_http_info(id)

```ruby
begin
  # Get a payment link by ID
  data, status_code, headers = api_instance.payment_links_controller_find_one_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_find_one_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Payment Link ID |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## payment_links_controller_update

> payment_links_controller_update(id, body)

Update a payment link

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

api_instance = Devdraft::PaymentLinksApi.new
id = 'id_example' # String | Payment Link ID
body = { ... } # Object | 

begin
  # Update a payment link
  api_instance.payment_links_controller_update(id, body)
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_update: #{e}"
end
```

#### Using the payment_links_controller_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_links_controller_update_with_http_info(id, body)

```ruby
begin
  # Update a payment link
  data, status_code, headers = api_instance.payment_links_controller_update_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentLinksApi->payment_links_controller_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Payment Link ID |  |
| **body** | **Object** |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

