# Devdraft::ProductsApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**product_controller_create**](ProductsApi.md#product_controller_create) | **POST** /api/v0/products | Create a new product |
| [**product_controller_find_all**](ProductsApi.md#product_controller_find_all) | **GET** /api/v0/products | Get all products |
| [**product_controller_find_one**](ProductsApi.md#product_controller_find_one) | **GET** /api/v0/products/{id} | Get a product by ID |
| [**product_controller_remove**](ProductsApi.md#product_controller_remove) | **DELETE** /api/v0/products/{id} | Delete a product |
| [**product_controller_update**](ProductsApi.md#product_controller_update) | **PUT** /api/v0/products/{id} | Update a product |
| [**product_controller_upload_image**](ProductsApi.md#product_controller_upload_image) | **POST** /api/v0/products/{id}/images | Upload images for a product |


## product_controller_create

> product_controller_create(name, description, price, opts)

Create a new product

Creates a new product with optional image uploads.      This endpoint allows you to create products with detailed information and multiple images.  ## Use Cases - Add new products to your catalog - Create products with multiple images - Set up product pricing and descriptions  ## Supported Image Formats - JPEG/JPG - PNG - WebP - Maximum 10 images per product - Maximum file size: 5MB per image  ## Example Request (multipart/form-data) ``` name: \"Premium Widget\" description: \"High-quality widget for all your needs\" price: \"99.99\" images: [file1.jpg, file2.jpg]  // Optional, up to 10 images ```  ## Required Fields - `name`: Product name - `price`: Product price (decimal number)  ## Optional Fields - `description`: Detailed product description - `images`: Product images (up to 10 files)

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

api_instance = Devdraft::ProductsApi.new
name = 'name_example' # String | Product name as it will appear to customers. Should be clear and descriptive.
description = 'description_example' # String | Detailed description of the product. Supports markdown formatting for rich text display.
price = 8.14 # Float | Product price in the specified currency. Must be greater than 0.
opts = {
  currency: 'USD', # String | Currency code for the price. Defaults to USD if not specified.
  type: 'type_example', # String | Product type
  weight: 8.14, # Float | Weight of the product
  unit: 'unit_example', # String | Unit of measurement
  quantity: 8.14, # Float | Quantity available
  stock_count: 8.14, # Float | Stock count
  status: 'status_example', # String | Product status
  product_type: 'product_type_example', # String | Product type
  images: ['inner_example'] # Array<String> | Array of image URLs
}

begin
  # Create a new product
  api_instance.product_controller_create(name, description, price, opts)
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_create: #{e}"
end
```

#### Using the product_controller_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> product_controller_create_with_http_info(name, description, price, opts)

```ruby
begin
  # Create a new product
  data, status_code, headers = api_instance.product_controller_create_with_http_info(name, description, price, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Product name as it will appear to customers. Should be clear and descriptive. |  |
| **description** | **String** | Detailed description of the product. Supports markdown formatting for rich text display. |  |
| **price** | **Float** | Product price in the specified currency. Must be greater than 0. |  |
| **currency** | **String** | Currency code for the price. Defaults to USD if not specified. | [optional][default to &#39;USD&#39;] |
| **type** | **String** | Product type | [optional] |
| **weight** | **Float** | Weight of the product | [optional] |
| **unit** | **String** | Unit of measurement | [optional] |
| **quantity** | **Float** | Quantity available | [optional] |
| **stock_count** | **Float** | Stock count | [optional] |
| **status** | **String** | Product status | [optional] |
| **product_type** | **String** | Product type | [optional] |
| **images** | [**Array&lt;String&gt;**](String.md) | Array of image URLs | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## product_controller_find_all

> product_controller_find_all(opts)

Get all products

Retrieves a list of products with pagination.      This endpoint allows you to fetch products with optional pagination.  ## Use Cases - List all products - Browse product catalog - Implement product search  ## Query Parameters - `skip`: Number of records to skip (default: 0) - `take`: Number of records to take (default: 10)  ## Example Response ```json {   \"data\": [     {       \"id\": \"prod_123456\",       \"name\": \"Premium Widget\",       \"description\": \"High-quality widget for all your needs\",       \"price\": \"99.99\",       \"images\": [         \"https://storage.example.com/images/file1.jpg\",         \"https://storage.example.com/images/file2.jpg\"       ],       \"createdAt\": \"2024-03-20T10:00:00Z\"     }   ],   \"total\": 100,   \"skip\": 0,   \"take\": 10 } ```

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

api_instance = Devdraft::ProductsApi.new
opts = {
  skip: 8.14, # Float | Number of records to skip
  take: 8.14 # Float | Number of records to take
}

begin
  # Get all products
  api_instance.product_controller_find_all(opts)
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_find_all: #{e}"
end
```

#### Using the product_controller_find_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> product_controller_find_all_with_http_info(opts)

```ruby
begin
  # Get all products
  data, status_code, headers = api_instance.product_controller_find_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_find_all_with_http_info: #{e}"
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


## product_controller_find_one

> product_controller_find_one(id)

Get a product by ID

Retrieves detailed information about a specific product.      This endpoint allows you to fetch complete product details including all images.  ## Use Cases - View product details - Display product information - Check product availability  ## Example Response ```json {   \"id\": \"prod_123456\",   \"name\": \"Premium Widget\",   \"description\": \"High-quality widget for all your needs\",   \"price\": \"99.99\",   \"images\": [     \"https://storage.example.com/images/file1.jpg\",     \"https://storage.example.com/images/file2.jpg\"   ],   \"createdAt\": \"2024-03-20T10:00:00Z\",   \"updatedAt\": \"2024-03-20T10:00:00Z\" } ```

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

api_instance = Devdraft::ProductsApi.new
id = 'id_example' # String | Product ID

begin
  # Get a product by ID
  api_instance.product_controller_find_one(id)
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_find_one: #{e}"
end
```

#### Using the product_controller_find_one_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> product_controller_find_one_with_http_info(id)

```ruby
begin
  # Get a product by ID
  data, status_code, headers = api_instance.product_controller_find_one_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_find_one_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## product_controller_remove

> product_controller_remove(id)

Delete a product

Deletes a product and its associated images.      This endpoint allows you to remove a product and all its associated data.  ## Use Cases - Remove discontinued products - Clean up product catalog - Delete test products  ## Notes - This action cannot be undone - All product images will be deleted - Associated data will be removed

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

api_instance = Devdraft::ProductsApi.new
id = 'id_example' # String | Product ID

begin
  # Delete a product
  api_instance.product_controller_remove(id)
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_remove: #{e}"
end
```

#### Using the product_controller_remove_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> product_controller_remove_with_http_info(id)

```ruby
begin
  # Delete a product
  data, status_code, headers = api_instance.product_controller_remove_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## product_controller_update

> product_controller_update(id, opts)

Update a product

Updates an existing product's information and optionally adds new images.      This endpoint allows you to modify product details and manage product images.  ## Use Cases - Update product information - Change product pricing - Modify product images - Update product description  ## Example Request (multipart/form-data) ``` name: \"Updated Premium Widget\" description: \"Updated description\" price: \"129.99\" images: [file1.jpg, file2.jpg]  // Optional, up to 10 images ```  ## Notes - Only include fields that need to be updated - New images will replace existing images - Maximum 10 images per product - Images are automatically optimized

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

api_instance = Devdraft::ProductsApi.new
id = 'id_example' # String | Product ID
opts = {
  name: 'name_example', # String | Product name as it will appear to customers. Should be clear and descriptive.
  description: 'description_example', # String | Detailed description of the product. Supports markdown formatting for rich text display.
  price: 8.14, # Float | Product price in the specified currency. Must be greater than 0.
  currency: 'USD', # String | Currency code for the price. Defaults to USD if not specified.
  type: 'type_example', # String | Product type
  weight: 8.14, # Float | Weight of the product
  unit: 'unit_example', # String | Unit of measurement
  quantity: 8.14, # Float | Quantity available
  stock_count: 8.14, # Float | Stock count
  status: 'status_example', # String | Product status
  product_type: 'product_type_example', # String | Product type
  images: ['inner_example'] # Array<String> | Array of image URLs
}

begin
  # Update a product
  api_instance.product_controller_update(id, opts)
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_update: #{e}"
end
```

#### Using the product_controller_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> product_controller_update_with_http_info(id, opts)

```ruby
begin
  # Update a product
  data, status_code, headers = api_instance.product_controller_update_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID |  |
| **name** | **String** | Product name as it will appear to customers. Should be clear and descriptive. | [optional] |
| **description** | **String** | Detailed description of the product. Supports markdown formatting for rich text display. | [optional] |
| **price** | **Float** | Product price in the specified currency. Must be greater than 0. | [optional] |
| **currency** | **String** | Currency code for the price. Defaults to USD if not specified. | [optional][default to &#39;USD&#39;] |
| **type** | **String** | Product type | [optional] |
| **weight** | **Float** | Weight of the product | [optional] |
| **unit** | **String** | Unit of measurement | [optional] |
| **quantity** | **Float** | Quantity available | [optional] |
| **stock_count** | **Float** | Stock count | [optional] |
| **status** | **String** | Product status | [optional] |
| **product_type** | **String** | Product type | [optional] |
| **images** | [**Array&lt;String&gt;**](String.md) | Array of image URLs | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## product_controller_upload_image

> product_controller_upload_image(id)

Upload images for a product

Adds new images to an existing product.      This endpoint allows you to upload additional images for a product that already exists.  ## Use Cases - Add more product images - Update product gallery - Enhance product presentation  ## Supported Image Formats - JPEG/JPG - PNG - WebP - Maximum 10 images per upload - Maximum file size: 5MB per image  ## Example Request (multipart/form-data) ``` images: [file1.jpg, file2.jpg]  // Up to 10 images ```  ## Notes - Images are appended to existing product images - Total images per product cannot exceed 10 - Images are automatically optimized and resized

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

api_instance = Devdraft::ProductsApi.new
id = 'id_example' # String | Product ID

begin
  # Upload images for a product
  api_instance.product_controller_upload_image(id)
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_upload_image: #{e}"
end
```

#### Using the product_controller_upload_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> product_controller_upload_image_with_http_info(id)

```ruby
begin
  # Upload images for a product
  data, status_code, headers = api_instance.product_controller_upload_image_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling ProductsApi->product_controller_upload_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

