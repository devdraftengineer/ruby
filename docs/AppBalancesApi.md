# Devdraft::AppBalancesApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**balance_controller_get_all_balances**](AppBalancesApi.md#balance_controller_get_all_balances) | **GET** /api/v0/balance | Get all stablecoin balances for an app |
| [**balance_controller_get_eurc_balance**](AppBalancesApi.md#balance_controller_get_eurc_balance) | **GET** /api/v0/balance/eurc | Get EURC balance for an app |
| [**balance_controller_get_usdc_balance**](AppBalancesApi.md#balance_controller_get_usdc_balance) | **GET** /api/v0/balance/usdc | Get USDC balance for an app |


## balance_controller_get_all_balances

> <AllBalancesResponse> balance_controller_get_all_balances

Get all stablecoin balances for an app

Retrieves both USDC and EURC balances across all wallets for the specified app.      This comprehensive endpoint provides: - Complete USDC balance aggregation with detailed breakdown - Complete EURC balance aggregation with detailed breakdown - Total USD equivalent value across both currencies - Individual wallet and chain-specific balance details  ## Use Cases - Complete financial dashboard overview - Multi-currency balance reporting - Comprehensive wallet management - Cross-currency analytics and reporting  ## Response Format The response includes separate aggregations for each currency plus a combined USD value estimate, providing complete visibility into stablecoin holdings.

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

api_instance = Devdraft::AppBalancesApi.new

begin
  # Get all stablecoin balances for an app
  result = api_instance.balance_controller_get_all_balances
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling AppBalancesApi->balance_controller_get_all_balances: #{e}"
end
```

#### Using the balance_controller_get_all_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AllBalancesResponse>, Integer, Hash)> balance_controller_get_all_balances_with_http_info

```ruby
begin
  # Get all stablecoin balances for an app
  data, status_code, headers = api_instance.balance_controller_get_all_balances_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AllBalancesResponse>
rescue Devdraft::ApiError => e
  puts "Error when calling AppBalancesApi->balance_controller_get_all_balances_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AllBalancesResponse**](AllBalancesResponse.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## balance_controller_get_eurc_balance

> <AggregatedBalanceResponse> balance_controller_get_eurc_balance

Get EURC balance for an app

Retrieves the total EURC balance across all wallets for the specified app.      This endpoint aggregates EURC balances from all associated wallets and provides: - Total EURC balance across all chains and wallets - Detailed breakdown by individual wallet and blockchain network - Contract addresses and wallet identifiers for each balance  ## Use Cases - Dashboard balance display - European market operations - Euro-denominated financial reporting - Cross-currency balance tracking  ## Response Format The response includes both the aggregated total and detailed breakdown, enabling comprehensive euro stablecoin balance management.

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

api_instance = Devdraft::AppBalancesApi.new

begin
  # Get EURC balance for an app
  result = api_instance.balance_controller_get_eurc_balance
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling AppBalancesApi->balance_controller_get_eurc_balance: #{e}"
end
```

#### Using the balance_controller_get_eurc_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AggregatedBalanceResponse>, Integer, Hash)> balance_controller_get_eurc_balance_with_http_info

```ruby
begin
  # Get EURC balance for an app
  data, status_code, headers = api_instance.balance_controller_get_eurc_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AggregatedBalanceResponse>
rescue Devdraft::ApiError => e
  puts "Error when calling AppBalancesApi->balance_controller_get_eurc_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AggregatedBalanceResponse**](AggregatedBalanceResponse.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## balance_controller_get_usdc_balance

> <AggregatedBalanceResponse> balance_controller_get_usdc_balance

Get USDC balance for an app

Retrieves the total USDC balance across all wallets for the specified app.      This endpoint aggregates USDC balances from all associated wallets and provides: - Total USDC balance across all chains and wallets - Detailed breakdown by individual wallet and blockchain network - Contract addresses and wallet identifiers for each balance  ## Use Cases - Dashboard balance display - Financial reporting and reconciliation - Real-time balance monitoring - Multi-chain balance aggregation  ## Response Format The response includes both the aggregated total and detailed breakdown, allowing for comprehensive balance tracking and wallet-specific analysis.

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

api_instance = Devdraft::AppBalancesApi.new

begin
  # Get USDC balance for an app
  result = api_instance.balance_controller_get_usdc_balance
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling AppBalancesApi->balance_controller_get_usdc_balance: #{e}"
end
```

#### Using the balance_controller_get_usdc_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AggregatedBalanceResponse>, Integer, Hash)> balance_controller_get_usdc_balance_with_http_info

```ruby
begin
  # Get USDC balance for an app
  data, status_code, headers = api_instance.balance_controller_get_usdc_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AggregatedBalanceResponse>
rescue Devdraft::ApiError => e
  puts "Error when calling AppBalancesApi->balance_controller_get_usdc_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AggregatedBalanceResponse**](AggregatedBalanceResponse.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

