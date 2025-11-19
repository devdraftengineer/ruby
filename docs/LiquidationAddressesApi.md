# Devdraft::LiquidationAddressesApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**liquidation_address_controller_create_liquidation_address**](LiquidationAddressesApi.md#liquidation_address_controller_create_liquidation_address) | **POST** /api/v0/customers/{customerId}/liquidation_addresses | Create a new liquidation address for a customer |
| [**liquidation_address_controller_get_liquidation_address**](LiquidationAddressesApi.md#liquidation_address_controller_get_liquidation_address) | **GET** /api/v0/customers/{customerId}/liquidation_addresses/{liquidationAddressId} | Get a specific liquidation address |
| [**liquidation_address_controller_get_liquidation_addresses**](LiquidationAddressesApi.md#liquidation_address_controller_get_liquidation_addresses) | **GET** /api/v0/customers/{customerId}/liquidation_addresses | Get all liquidation addresses for a customer |


## liquidation_address_controller_create_liquidation_address

> <LiquidationAddressResponseDto> liquidation_address_controller_create_liquidation_address(customer_id, create_liquidation_address_dto)

Create a new liquidation address for a customer

       Create a new liquidation address for a customer. Liquidation addresses allow        customers to automatically liquidate cryptocurrency holdings to fiat or other        stablecoins based on configured parameters.        **Required fields:**       - chain: Blockchain network (ethereum, polygon, arbitrum, base)       - currency: Stablecoin currency (usdc, eurc, dai, pyusd, usdt)       - address: Valid blockchain address        **At least one destination must be specified:**       - external_account_id: External bank account       - prefunded_account_id: Developer's prefunded account       - bridge_wallet_id: Bridge wallet       - destination_address: Crypto wallet address        **Payment Rails:**       Different payment rails have different requirements:       - ACH: Requires external_account_id, supports destination_ach_reference       - SEPA: Requires external_account_id, supports destination_sepa_reference       - Wire: Requires external_account_id, supports destination_wire_message       - Crypto: Requires destination_address, supports destination_blockchain_memo     

### Examples

```ruby
require 'time'
require 'devdraft'

api_instance = Devdraft::LiquidationAddressesApi.new
customer_id = 'cust_123' # String | Unique identifier for the customer
create_liquidation_address_dto = Devdraft::CreateLiquidationAddressDto.new({chain: 'ethereum', currency: 'usdc', address: '0x4d0280da2f2fDA5103914bCc5aad114743152A9c'}) # CreateLiquidationAddressDto | 

begin
  # Create a new liquidation address for a customer
  result = api_instance.liquidation_address_controller_create_liquidation_address(customer_id, create_liquidation_address_dto)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling LiquidationAddressesApi->liquidation_address_controller_create_liquidation_address: #{e}"
end
```

#### Using the liquidation_address_controller_create_liquidation_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiquidationAddressResponseDto>, Integer, Hash)> liquidation_address_controller_create_liquidation_address_with_http_info(customer_id, create_liquidation_address_dto)

```ruby
begin
  # Create a new liquidation address for a customer
  data, status_code, headers = api_instance.liquidation_address_controller_create_liquidation_address_with_http_info(customer_id, create_liquidation_address_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiquidationAddressResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling LiquidationAddressesApi->liquidation_address_controller_create_liquidation_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique identifier for the customer |  |
| **create_liquidation_address_dto** | [**CreateLiquidationAddressDto**](CreateLiquidationAddressDto.md) |  |  |

### Return type

[**LiquidationAddressResponseDto**](LiquidationAddressResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## liquidation_address_controller_get_liquidation_address

> <LiquidationAddressResponseDto> liquidation_address_controller_get_liquidation_address(customer_id, liquidation_address_id)

Get a specific liquidation address

Retrieve a specific liquidation address by its ID for a given customer.

### Examples

```ruby
require 'time'
require 'devdraft'

api_instance = Devdraft::LiquidationAddressesApi.new
customer_id = 'cust_123' # String | Unique identifier for the customer
liquidation_address_id = 'la_generated_id_123' # String | Unique identifier for the liquidation address

begin
  # Get a specific liquidation address
  result = api_instance.liquidation_address_controller_get_liquidation_address(customer_id, liquidation_address_id)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling LiquidationAddressesApi->liquidation_address_controller_get_liquidation_address: #{e}"
end
```

#### Using the liquidation_address_controller_get_liquidation_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiquidationAddressResponseDto>, Integer, Hash)> liquidation_address_controller_get_liquidation_address_with_http_info(customer_id, liquidation_address_id)

```ruby
begin
  # Get a specific liquidation address
  data, status_code, headers = api_instance.liquidation_address_controller_get_liquidation_address_with_http_info(customer_id, liquidation_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiquidationAddressResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling LiquidationAddressesApi->liquidation_address_controller_get_liquidation_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique identifier for the customer |  |
| **liquidation_address_id** | **String** | Unique identifier for the liquidation address |  |

### Return type

[**LiquidationAddressResponseDto**](LiquidationAddressResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## liquidation_address_controller_get_liquidation_addresses

> <Array<LiquidationAddressResponseDto>> liquidation_address_controller_get_liquidation_addresses(customer_id)

Get all liquidation addresses for a customer

Retrieve all liquidation addresses associated with a specific customer.

### Examples

```ruby
require 'time'
require 'devdraft'

api_instance = Devdraft::LiquidationAddressesApi.new
customer_id = 'cust_123' # String | Unique identifier for the customer

begin
  # Get all liquidation addresses for a customer
  result = api_instance.liquidation_address_controller_get_liquidation_addresses(customer_id)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling LiquidationAddressesApi->liquidation_address_controller_get_liquidation_addresses: #{e}"
end
```

#### Using the liquidation_address_controller_get_liquidation_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LiquidationAddressResponseDto>>, Integer, Hash)> liquidation_address_controller_get_liquidation_addresses_with_http_info(customer_id)

```ruby
begin
  # Get all liquidation addresses for a customer
  data, status_code, headers = api_instance.liquidation_address_controller_get_liquidation_addresses_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LiquidationAddressResponseDto>>
rescue Devdraft::ApiError => e
  puts "Error when calling LiquidationAddressesApi->liquidation_address_controller_get_liquidation_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique identifier for the customer |  |

### Return type

[**Array&lt;LiquidationAddressResponseDto&gt;**](LiquidationAddressResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

