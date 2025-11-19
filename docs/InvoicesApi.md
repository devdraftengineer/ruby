# Devdraft::InvoicesApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**invoice_controller_create**](InvoicesApi.md#invoice_controller_create) | **POST** /api/v0/invoices | Create a new invoice |
| [**invoice_controller_find_all**](InvoicesApi.md#invoice_controller_find_all) | **GET** /api/v0/invoices | Get all invoices |
| [**invoice_controller_find_one**](InvoicesApi.md#invoice_controller_find_one) | **GET** /api/v0/invoices/{id} | Get an invoice by ID |
| [**invoice_controller_update**](InvoicesApi.md#invoice_controller_update) | **PUT** /api/v0/invoices/{id} | Update an invoice |


## invoice_controller_create

> invoice_controller_create(create_invoice_dto)

Create a new invoice

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

api_instance = Devdraft::InvoicesApi.new
create_invoice_dto = Devdraft::CreateInvoiceDto.new({name: 'name_example', email: 'email_example', customer_id: 'customer_id_example', currency: 'usdc', items: 3.56, due_date: Time.now, delivery: 'EMAIL', payment_link: false, payment_methods: ['ACH'], status: 'DRAFT', partial_payment: false}) # CreateInvoiceDto | 

begin
  # Create a new invoice
  api_instance.invoice_controller_create(create_invoice_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_create: #{e}"
end
```

#### Using the invoice_controller_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_controller_create_with_http_info(create_invoice_dto)

```ruby
begin
  # Create a new invoice
  data, status_code, headers = api_instance.invoice_controller_create_with_http_info(create_invoice_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_invoice_dto** | [**CreateInvoiceDto**](CreateInvoiceDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## invoice_controller_find_all

> invoice_controller_find_all(opts)

Get all invoices

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

api_instance = Devdraft::InvoicesApi.new
opts = {
  skip: 8.14, # Float | Number of records to skip
  take: 8.14 # Float | Number of records to take
}

begin
  # Get all invoices
  api_instance.invoice_controller_find_all(opts)
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_find_all: #{e}"
end
```

#### Using the invoice_controller_find_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_controller_find_all_with_http_info(opts)

```ruby
begin
  # Get all invoices
  data, status_code, headers = api_instance.invoice_controller_find_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_find_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Float** | Number of records to skip | [optional] |
| **take** | **Float** | Number of records to take | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## invoice_controller_find_one

> invoice_controller_find_one(id)

Get an invoice by ID

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

api_instance = Devdraft::InvoicesApi.new
id = 'id_example' # String | Invoice ID

begin
  # Get an invoice by ID
  api_instance.invoice_controller_find_one(id)
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_find_one: #{e}"
end
```

#### Using the invoice_controller_find_one_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_controller_find_one_with_http_info(id)

```ruby
begin
  # Get an invoice by ID
  data, status_code, headers = api_instance.invoice_controller_find_one_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_find_one_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Invoice ID |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## invoice_controller_update

> invoice_controller_update(id, create_invoice_dto)

Update an invoice

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

api_instance = Devdraft::InvoicesApi.new
id = 'id_example' # String | Invoice ID
create_invoice_dto = Devdraft::CreateInvoiceDto.new({name: 'name_example', email: 'email_example', customer_id: 'customer_id_example', currency: 'usdc', items: 3.56, due_date: Time.now, delivery: 'EMAIL', payment_link: false, payment_methods: ['ACH'], status: 'DRAFT', partial_payment: false}) # CreateInvoiceDto | 

begin
  # Update an invoice
  api_instance.invoice_controller_update(id, create_invoice_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_update: #{e}"
end
```

#### Using the invoice_controller_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_controller_update_with_http_info(id, create_invoice_dto)

```ruby
begin
  # Update an invoice
  data, status_code, headers = api_instance.invoice_controller_update_with_http_info(id, create_invoice_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling InvoicesApi->invoice_controller_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Invoice ID |  |
| **create_invoice_dto** | [**CreateInvoiceDto**](CreateInvoiceDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

