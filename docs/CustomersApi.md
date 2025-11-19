# Devdraft::CustomersApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**customer_controller_create**](CustomersApi.md#customer_controller_create) | **POST** /api/v0/customers | Create a new customer |
| [**customer_controller_find_all**](CustomersApi.md#customer_controller_find_all) | **GET** /api/v0/customers | Get all customers with filters |
| [**customer_controller_find_one**](CustomersApi.md#customer_controller_find_one) | **GET** /api/v0/customers/{id} | Get a customer by ID |
| [**customer_controller_update**](CustomersApi.md#customer_controller_update) | **PATCH** /api/v0/customers/{id} | Update a customer |


## customer_controller_create

> customer_controller_create(create_customer_dto)

Create a new customer

Creates a new customer in the system with their personal and contact information.      This endpoint allows you to register new customers and store their details for future transactions.  ## Use Cases - Register new customers for payment processing - Store customer information for recurring payments - Maintain customer profiles for transaction history  ## Example: Create New Customer ```json {   \"first_name\": \"John\",   \"last_name\": \"Doe\",   \"email\": \"john.doe@example.com\",   \"phone_number\": \"+1-555-123-4567\",   \"customer_type\": \"Startup\",   \"status\": \"ACTIVE\" } ```  ## Required Fields - `first_name`: Customer's first name (1-100 characters) - `last_name`: Customer's last name (1-100 characters) - `phone_number`: Customer's phone number (max 20 characters)  ## Optional Fields - `email`: Valid email address (max 255 characters) - `customer_type`: Type of customer account (Individual, Startup, Small Business, Medium Business, Enterprise, Non-Profit, Government) - `status`: Customer status (ACTIVE, BLACKLISTED, DEACTIVATED)

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

api_instance = Devdraft::CustomersApi.new
create_customer_dto = Devdraft::CreateCustomerDto.new({first_name: 'John', last_name: 'Doe', phone_number: '+1-555-123-4567'}) # CreateCustomerDto | Customer creation data

begin
  # Create a new customer
  api_instance.customer_controller_create(create_customer_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_create: #{e}"
end
```

#### Using the customer_controller_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> customer_controller_create_with_http_info(create_customer_dto)

```ruby
begin
  # Create a new customer
  data, status_code, headers = api_instance.customer_controller_create_with_http_info(create_customer_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_customer_dto** | [**CreateCustomerDto**](CreateCustomerDto.md) | Customer creation data |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## customer_controller_find_all

> customer_controller_find_all(opts)

Get all customers with filters

Retrieves a list of customers with optional filtering and pagination.      This endpoint allows you to search and filter customers based on various criteria.  ## Use Cases - List all customers with pagination - Search customers by name or email - Filter customers by status - Export customer data  ## Query Parameters - `skip`: Number of records to skip (default: 0, min: 0) - `take`: Number of records to take (default: 10, min: 1, max: 100) - `status`: Filter by customer status (ACTIVE, BLACKLISTED, DEACTIVATED) - `name`: Filter by customer name (partial match, case-insensitive) - `email`: Filter by customer email (exact match, case-insensitive)  ## Example Request `GET /api/v0/customers?skip=0&take=20&status=ACTIVE&name=John`  ## Example Response ```json {   \"data\": [     {       \"id\": \"cust_123456\",       \"first_name\": \"John\",       \"last_name\": \"Doe\",       \"email\": \"john.doe@example.com\",       \"phone_number\": \"+1-555-123-4567\",       \"customer_type\": \"Startup\",       \"status\": \"ACTIVE\",       \"created_at\": \"2024-03-20T10:00:00Z\",       \"updated_at\": \"2024-03-20T10:00:00Z\"     }   ],   \"total\": 100,   \"skip\": 0,   \"take\": 10 } ```

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

api_instance = Devdraft::CustomersApi.new
opts = {
  skip: 0, # Float | Number of records to skip for pagination
  take: 10, # Float | Number of records to return (max 100)
  status: Devdraft::CustomerStatus::ACTIVE, # CustomerStatus | Filter customers by status
  name: 'John', # String | Filter customers by name (partial match, case-insensitive)
  email: 'john.doe@example.com' # String | Filter customers by email (exact match, case-insensitive)
}

begin
  # Get all customers with filters
  api_instance.customer_controller_find_all(opts)
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_find_all: #{e}"
end
```

#### Using the customer_controller_find_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> customer_controller_find_all_with_http_info(opts)

```ruby
begin
  # Get all customers with filters
  data, status_code, headers = api_instance.customer_controller_find_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_find_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Float** | Number of records to skip for pagination | [optional][default to 0] |
| **take** | **Float** | Number of records to return (max 100) | [optional][default to 10] |
| **status** | [**CustomerStatus**](.md) | Filter customers by status | [optional] |
| **name** | **String** | Filter customers by name (partial match, case-insensitive) | [optional] |
| **email** | **String** | Filter customers by email (exact match, case-insensitive) | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## customer_controller_find_one

> customer_controller_find_one(id)

Get a customer by ID

Retrieves detailed information about a specific customer.      This endpoint allows you to fetch complete customer details including their contact information and status.  ## Use Cases - View customer details - Verify customer information - Check customer status before processing payments  ## Path Parameters - `id`: Customer UUID (required) - Must be a valid UUID format  ## Example Request `GET /api/v0/customers/123e4567-e89b-12d3-a456-426614174000`  ## Example Response ```json {   \"id\": \"cust_123456\",   \"first_name\": \"John\",   \"last_name\": \"Doe\",   \"email\": \"john.doe@example.com\",   \"phone_number\": \"+1-555-123-4567\",   \"customer_type\": \"Enterprise\",   \"status\": \"ACTIVE\",   \"last_spent\": 1250.50,   \"last_purchase_date\": \"2024-03-15T14:30:00Z\",   \"created_at\": \"2024-03-20T10:00:00Z\",   \"updated_at\": \"2024-03-20T10:00:00Z\" } ```

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

api_instance = Devdraft::CustomersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Customer unique identifier (UUID)

begin
  # Get a customer by ID
  api_instance.customer_controller_find_one(id)
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_find_one: #{e}"
end
```

#### Using the customer_controller_find_one_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> customer_controller_find_one_with_http_info(id)

```ruby
begin
  # Get a customer by ID
  data, status_code, headers = api_instance.customer_controller_find_one_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_find_one_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Customer unique identifier (UUID) |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## customer_controller_update

> customer_controller_update(id, update_customer_dto)

Update a customer

Updates an existing customer's information.      This endpoint allows you to modify customer details while preserving their core information.  ## Use Cases - Update customer contact information - Change customer type - Modify customer status  ## Path Parameters - `id`: Customer UUID (required) - Must be a valid UUID format  ## Example Request `PATCH /api/v0/customers/123e4567-e89b-12d3-a456-426614174000`  ## Example Request Body ```json {   \"first_name\": \"John\",   \"last_name\": \"Smith\",   \"phone_number\": \"+1-987-654-3210\",   \"customer_type\": \"Small Business\" } ```  ## Notes - Only include fields that need to be updated - All fields are optional in updates - Status changes may require additional verification

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

api_instance = Devdraft::CustomersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Customer unique identifier (UUID)
update_customer_dto = Devdraft::UpdateCustomerDto.new # UpdateCustomerDto | Customer update data

begin
  # Update a customer
  api_instance.customer_controller_update(id, update_customer_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_update: #{e}"
end
```

#### Using the customer_controller_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> customer_controller_update_with_http_info(id, update_customer_dto)

```ruby
begin
  # Update a customer
  data, status_code, headers = api_instance.customer_controller_update_with_http_info(id, update_customer_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling CustomersApi->customer_controller_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Customer unique identifier (UUID) |  |
| **update_customer_dto** | [**UpdateCustomerDto**](UpdateCustomerDto.md) | Customer update data |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

