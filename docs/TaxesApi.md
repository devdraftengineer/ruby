# Devdraft::TaxesApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tax_controller_create**](TaxesApi.md#tax_controller_create) | **POST** /api/v0/taxes | Create a new tax |
| [**tax_controller_delete_without_id**](TaxesApi.md#tax_controller_delete_without_id) | **DELETE** /api/v0/taxes | Tax ID required for deletion |
| [**tax_controller_find_all**](TaxesApi.md#tax_controller_find_all) | **GET** /api/v0/taxes | Get all taxes with filters |
| [**tax_controller_find_one**](TaxesApi.md#tax_controller_find_one) | **GET** /api/v0/taxes/{id} | Get a tax by ID |
| [**tax_controller_remove**](TaxesApi.md#tax_controller_remove) | **DELETE** /api/v0/taxes/{id} | Delete a tax |
| [**tax_controller_update**](TaxesApi.md#tax_controller_update) | **PUT** /api/v0/taxes/{id} | Update a tax |
| [**tax_controller_update_without_id**](TaxesApi.md#tax_controller_update_without_id) | **PUT** /api/v0/taxes | Tax ID required for updates |


## tax_controller_create

> <TaxControllerCreate201Response> tax_controller_create(create_tax_dto)

Create a new tax

Creates a new tax rate that can be applied to products, invoices, and payment links.  ## Use Cases - Set up sales tax for different regions - Create VAT rates for international customers - Configure state and local tax rates - Manage tax compliance requirements  ## Example: Create Basic Sales Tax ```json {   \"name\": \"Sales Tax\",   \"description\": \"Standard sales tax for retail transactions\",   \"percentage\": 8.5,   \"active\": true } ```  ## Required Fields - `name`: Tax name for identification (1-100 characters) - `percentage`: Tax rate percentage (0-100)  ## Optional Fields - `description`: Explanation of what this tax covers (max 255 characters) - `active`: Whether this tax is currently active (default: true) - `appIds`: Array of app IDs where this tax should be available

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

api_instance = Devdraft::TaxesApi.new
create_tax_dto = Devdraft::CreateTaxDto.new({name: 'Sales Tax', percentage: 8.5}) # CreateTaxDto | Tax creation data

begin
  # Create a new tax
  result = api_instance.tax_controller_create(create_tax_dto)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_create: #{e}"
end
```

#### Using the tax_controller_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxControllerCreate201Response>, Integer, Hash)> tax_controller_create_with_http_info(create_tax_dto)

```ruby
begin
  # Create a new tax
  data, status_code, headers = api_instance.tax_controller_create_with_http_info(create_tax_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxControllerCreate201Response>
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tax_dto** | [**CreateTaxDto**](CreateTaxDto.md) | Tax creation data |  |

### Return type

[**TaxControllerCreate201Response**](TaxControllerCreate201Response.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tax_controller_delete_without_id

> tax_controller_delete_without_id

Tax ID required for deletion

This endpoint requires a tax ID in the URL path. Use DELETE /api/v0/taxes/{id} instead.

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

api_instance = Devdraft::TaxesApi.new

begin
  # Tax ID required for deletion
  api_instance.tax_controller_delete_without_id
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_delete_without_id: #{e}"
end
```

#### Using the tax_controller_delete_without_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tax_controller_delete_without_id_with_http_info

```ruby
begin
  # Tax ID required for deletion
  data, status_code, headers = api_instance.tax_controller_delete_without_id_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_delete_without_id_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tax_controller_find_all

> tax_controller_find_all(opts)

Get all taxes with filters

Retrieves a list of taxes with optional filtering and pagination.  ## Use Cases - List all available tax rates - Search taxes by name - Filter active/inactive taxes - Export tax configuration  ## Query Parameters - `skip`: Number of records to skip (default: 0, min: 0) - `take`: Number of records to return (default: 10, min: 1, max: 100) - `name`: Filter taxes by name (partial match, case-insensitive) - `active`: Filter by active status (true/false)  ## Example Request `GET /api/v0/taxes?skip=0&take=20&active=true&name=Sales`  ## Example Response ```json [   {     \"id\": \"tax_123456\",     \"name\": \"Sales Tax\",     \"description\": \"Standard sales tax for retail transactions\",     \"percentage\": 8.5,     \"active\": true,     \"created_at\": \"2024-03-20T10:00:00Z\",     \"updated_at\": \"2024-03-20T10:00:00Z\"   } ] ```

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

api_instance = Devdraft::TaxesApi.new
opts = {
  skip: 0, # Float | Number of records to skip for pagination
  take: 10, # Float | Number of records to return (max 100)
  name: 'Sales', # String | Filter taxes by name (partial match, case-insensitive)
  active: true # Boolean | Filter by active status
}

begin
  # Get all taxes with filters
  api_instance.tax_controller_find_all(opts)
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_find_all: #{e}"
end
```

#### Using the tax_controller_find_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tax_controller_find_all_with_http_info(opts)

```ruby
begin
  # Get all taxes with filters
  data, status_code, headers = api_instance.tax_controller_find_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_find_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Float** | Number of records to skip for pagination | [optional][default to 0] |
| **take** | **Float** | Number of records to return (max 100) | [optional][default to 10] |
| **name** | **String** | Filter taxes by name (partial match, case-insensitive) | [optional] |
| **active** | **Boolean** | Filter by active status | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## tax_controller_find_one

> tax_controller_find_one(id)

Get a tax by ID

Retrieves detailed information about a specific tax.  ## Use Cases - View tax details - Verify tax configuration - Check tax status before applying to products  ## Path Parameters - `id`: Tax UUID (required) - Must be a valid UUID format  ## Example Request `GET /api/v0/taxes/123e4567-e89b-12d3-a456-426614174000`  ## Example Response ```json {   \"id\": \"tax_123456\",   \"name\": \"Sales Tax\",   \"description\": \"Standard sales tax for retail transactions\",   \"percentage\": 8.5,   \"active\": true,   \"created_at\": \"2024-03-20T10:00:00Z\",   \"updated_at\": \"2024-03-20T10:00:00Z\" } ```

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

api_instance = Devdraft::TaxesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Tax unique identifier (UUID)

begin
  # Get a tax by ID
  api_instance.tax_controller_find_one(id)
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_find_one: #{e}"
end
```

#### Using the tax_controller_find_one_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tax_controller_find_one_with_http_info(id)

```ruby
begin
  # Get a tax by ID
  data, status_code, headers = api_instance.tax_controller_find_one_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_find_one_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Tax unique identifier (UUID) |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## tax_controller_remove

> tax_controller_remove(id)

Delete a tax

Deletes an existing tax.  ## Use Cases - Remove obsolete tax rates - Clean up unused taxes - Comply with regulatory changes  ## Path Parameters - `id`: Tax UUID (required) - Must be a valid UUID format  ## Example Request `DELETE /api/v0/taxes/123e4567-e89b-12d3-a456-426614174000`  ## Warning This action cannot be undone. Consider deactivating the tax instead of deleting it if it has been used in transactions.

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

api_instance = Devdraft::TaxesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Tax unique identifier (UUID)

begin
  # Delete a tax
  api_instance.tax_controller_remove(id)
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_remove: #{e}"
end
```

#### Using the tax_controller_remove_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tax_controller_remove_with_http_info(id)

```ruby
begin
  # Delete a tax
  data, status_code, headers = api_instance.tax_controller_remove_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Tax unique identifier (UUID) |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## tax_controller_update

> tax_controller_update(id, update_tax_dto)

Update a tax

Updates an existing tax's information.  ## Use Cases - Modify tax percentage rates - Update tax descriptions - Activate/deactivate taxes - Change tax names  ## Path Parameters - `id`: Tax UUID (required) - Must be a valid UUID format  ## Example Request `PUT /api/v0/taxes/123e4567-e89b-12d3-a456-426614174000`  ## Example Request Body ```json {   \"name\": \"Updated Sales Tax\",   \"description\": \"Updated sales tax rate\",   \"percentage\": 9.0,   \"active\": true } ```  ## Notes - Only include fields that need to be updated - All fields are optional in updates - Percentage changes affect future calculations only

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

api_instance = Devdraft::TaxesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Tax unique identifier (UUID)
update_tax_dto = Devdraft::UpdateTaxDto.new # UpdateTaxDto | Tax update data - only include fields you want to update

begin
  # Update a tax
  api_instance.tax_controller_update(id, update_tax_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_update: #{e}"
end
```

#### Using the tax_controller_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tax_controller_update_with_http_info(id, update_tax_dto)

```ruby
begin
  # Update a tax
  data, status_code, headers = api_instance.tax_controller_update_with_http_info(id, update_tax_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Tax unique identifier (UUID) |  |
| **update_tax_dto** | [**UpdateTaxDto**](UpdateTaxDto.md) | Tax update data - only include fields you want to update |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## tax_controller_update_without_id

> tax_controller_update_without_id

Tax ID required for updates

This endpoint requires a tax ID in the URL path. Use PUT /api/v0/taxes/{id} instead.

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

api_instance = Devdraft::TaxesApi.new

begin
  # Tax ID required for updates
  api_instance.tax_controller_update_without_id
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_update_without_id: #{e}"
end
```

#### Using the tax_controller_update_without_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tax_controller_update_without_id_with_http_info

```ruby
begin
  # Tax ID required for updates
  data, status_code, headers = api_instance.tax_controller_update_without_id_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TaxesApi->tax_controller_update_without_id_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

