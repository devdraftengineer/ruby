# Devdraft::TransfersApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**transfer_controller_create_direct_bank_transfer**](TransfersApi.md#transfer_controller_create_direct_bank_transfer) | **POST** /api/v0/transfers/direct-bank | Create a direct bank transfer |
| [**transfer_controller_create_direct_wallet_transfer**](TransfersApi.md#transfer_controller_create_direct_wallet_transfer) | **POST** /api/v0/transfers/direct-wallet | Create a direct wallet transfer |
| [**transfer_controller_create_external_bank_transfer**](TransfersApi.md#transfer_controller_create_external_bank_transfer) | **POST** /api/v0/transfers/external-bank-transfer | Create an external bank transfer |
| [**transfer_controller_create_external_stablecoin_transfer**](TransfersApi.md#transfer_controller_create_external_stablecoin_transfer) | **POST** /api/v0/transfers/external-stablecoin-transfer | Create an external stablecoin transfer |
| [**transfer_controller_create_stablecoin_conversion**](TransfersApi.md#transfer_controller_create_stablecoin_conversion) | **POST** /api/v0/transfers/stablecoin-conversion | Create a stablecoin conversion |


## transfer_controller_create_direct_bank_transfer

> transfer_controller_create_direct_bank_transfer(create_direct_bank_transfer_dto)

Create a direct bank transfer

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

api_instance = Devdraft::TransfersApi.new
create_direct_bank_transfer_dto = Devdraft::CreateDirectBankTransferDto.new({wallet_id: 'wallet_id_example', payment_rail: 'payment_rail_example', destination_currency: 'destination_currency_example', source_currency: 'source_currency_example', amount: 3.56}) # CreateDirectBankTransferDto | 

begin
  # Create a direct bank transfer
  api_instance.transfer_controller_create_direct_bank_transfer(create_direct_bank_transfer_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_direct_bank_transfer: #{e}"
end
```

#### Using the transfer_controller_create_direct_bank_transfer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_controller_create_direct_bank_transfer_with_http_info(create_direct_bank_transfer_dto)

```ruby
begin
  # Create a direct bank transfer
  data, status_code, headers = api_instance.transfer_controller_create_direct_bank_transfer_with_http_info(create_direct_bank_transfer_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_direct_bank_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_direct_bank_transfer_dto** | [**CreateDirectBankTransferDto**](CreateDirectBankTransferDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## transfer_controller_create_direct_wallet_transfer

> transfer_controller_create_direct_wallet_transfer(create_direct_wallet_transfer_dto)

Create a direct wallet transfer

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

api_instance = Devdraft::TransfersApi.new
create_direct_wallet_transfer_dto = Devdraft::CreateDirectWalletTransferDto.new({wallet_id: 'wallet_id_example', network: 'network_example', stable_coin_currency: 'stable_coin_currency_example', amount: 3.56}) # CreateDirectWalletTransferDto | 

begin
  # Create a direct wallet transfer
  api_instance.transfer_controller_create_direct_wallet_transfer(create_direct_wallet_transfer_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_direct_wallet_transfer: #{e}"
end
```

#### Using the transfer_controller_create_direct_wallet_transfer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_controller_create_direct_wallet_transfer_with_http_info(create_direct_wallet_transfer_dto)

```ruby
begin
  # Create a direct wallet transfer
  data, status_code, headers = api_instance.transfer_controller_create_direct_wallet_transfer_with_http_info(create_direct_wallet_transfer_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_direct_wallet_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_direct_wallet_transfer_dto** | [**CreateDirectWalletTransferDto**](CreateDirectWalletTransferDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## transfer_controller_create_external_bank_transfer

> transfer_controller_create_external_bank_transfer(create_external_bank_transfer_dto)

Create an external bank transfer

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

api_instance = Devdraft::TransfersApi.new
create_external_bank_transfer_dto = Devdraft::CreateExternalBankTransferDto.new({source_wallet_id: 'source_wallet_id_example', source_currency: 'source_currency_example', destination_currency: 'destination_currency_example', destination_payment_rail: Devdraft::BridgeFiatPaymentRail::ACH, external_account_id: 'external_account_id_example'}) # CreateExternalBankTransferDto | 

begin
  # Create an external bank transfer
  api_instance.transfer_controller_create_external_bank_transfer(create_external_bank_transfer_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_external_bank_transfer: #{e}"
end
```

#### Using the transfer_controller_create_external_bank_transfer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_controller_create_external_bank_transfer_with_http_info(create_external_bank_transfer_dto)

```ruby
begin
  # Create an external bank transfer
  data, status_code, headers = api_instance.transfer_controller_create_external_bank_transfer_with_http_info(create_external_bank_transfer_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_external_bank_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_external_bank_transfer_dto** | [**CreateExternalBankTransferDto**](CreateExternalBankTransferDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## transfer_controller_create_external_stablecoin_transfer

> transfer_controller_create_external_stablecoin_transfer(create_external_stablecoin_transfer_dto)

Create an external stablecoin transfer

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

api_instance = Devdraft::TransfersApi.new
create_external_stablecoin_transfer_dto = Devdraft::CreateExternalStablecoinTransferDto.new({source_wallet_id: 'source_wallet_id_example', source_currency: 'source_currency_example', destination_currency: 'destination_currency_example', beneficiary_id: 'beneficiary_12345'}) # CreateExternalStablecoinTransferDto | 

begin
  # Create an external stablecoin transfer
  api_instance.transfer_controller_create_external_stablecoin_transfer(create_external_stablecoin_transfer_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_external_stablecoin_transfer: #{e}"
end
```

#### Using the transfer_controller_create_external_stablecoin_transfer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_controller_create_external_stablecoin_transfer_with_http_info(create_external_stablecoin_transfer_dto)

```ruby
begin
  # Create an external stablecoin transfer
  data, status_code, headers = api_instance.transfer_controller_create_external_stablecoin_transfer_with_http_info(create_external_stablecoin_transfer_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_external_stablecoin_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_external_stablecoin_transfer_dto** | [**CreateExternalStablecoinTransferDto**](CreateExternalStablecoinTransferDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## transfer_controller_create_stablecoin_conversion

> transfer_controller_create_stablecoin_conversion(create_stablecoin_conversion_dto)

Create a stablecoin conversion

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

api_instance = Devdraft::TransfersApi.new
create_stablecoin_conversion_dto = Devdraft::CreateStablecoinConversionDto.new({wallet_id: 'wallet_id_example', source_network: 'source_network_example', source_currency: 'source_currency_example', destination_currency: 'destination_currency_example', amount: 3.56}) # CreateStablecoinConversionDto | 

begin
  # Create a stablecoin conversion
  api_instance.transfer_controller_create_stablecoin_conversion(create_stablecoin_conversion_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_stablecoin_conversion: #{e}"
end
```

#### Using the transfer_controller_create_stablecoin_conversion_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_controller_create_stablecoin_conversion_with_http_info(create_stablecoin_conversion_dto)

```ruby
begin
  # Create a stablecoin conversion
  data, status_code, headers = api_instance.transfer_controller_create_stablecoin_conversion_with_http_info(create_stablecoin_conversion_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling TransfersApi->transfer_controller_create_stablecoin_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_stablecoin_conversion_dto** | [**CreateStablecoinConversionDto**](CreateStablecoinConversionDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

