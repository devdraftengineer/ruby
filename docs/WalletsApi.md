# Devdraft::WalletsApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wallet_controller_get_wallets**](WalletsApi.md#wallet_controller_get_wallets) | **GET** /api/v0/wallets | Get wallets for an app |


## wallet_controller_get_wallets

> wallet_controller_get_wallets

Get wallets for an app

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

api_instance = Devdraft::WalletsApi.new

begin
  # Get wallets for an app
  api_instance.wallet_controller_get_wallets
rescue Devdraft::ApiError => e
  puts "Error when calling WalletsApi->wallet_controller_get_wallets: #{e}"
end
```

#### Using the wallet_controller_get_wallets_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> wallet_controller_get_wallets_with_http_info

```ruby
begin
  # Get wallets for an app
  data, status_code, headers = api_instance.wallet_controller_get_wallets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling WalletsApi->wallet_controller_get_wallets_with_http_info: #{e}"
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
- **Accept**: Not defined

