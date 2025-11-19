# Devdraft::ExchangeRatesApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_rate_controller_get_eurto_usd_rate**](ExchangeRatesApi.md#exchange_rate_controller_get_eurto_usd_rate) | **GET** /api/v0/exchange-rate/eur-to-usd | Get EUR to USD exchange rate |
| [**exchange_rate_controller_get_exchange_rate**](ExchangeRatesApi.md#exchange_rate_controller_get_exchange_rate) | **GET** /api/v0/exchange-rate | Get exchange rate between specified currencies |
| [**exchange_rate_controller_get_usdto_eur_rate**](ExchangeRatesApi.md#exchange_rate_controller_get_usdto_eur_rate) | **GET** /api/v0/exchange-rate/usd-to-eur | Get USD to EUR exchange rate |


## exchange_rate_controller_get_eurto_usd_rate

> <ExchangeRateResponseDto> exchange_rate_controller_get_eurto_usd_rate

Get EUR to USD exchange rate

Retrieves the current exchange rate for converting EUR to USD (EURC to USDC).      This endpoint provides real-time exchange rate information for stablecoin conversions: - Mid-market rate for reference pricing - Buy rate for actual conversion calculations - Sell rate for reverse conversion scenarios  ## Use Cases - Display current exchange rates in dashboards - Calculate conversion amounts for EURC to USDC transfers - Financial reporting and analytics - Real-time pricing for multi-currency operations  ## Rate Information - **Mid-market rate**: The theoretical middle rate between buy and sell - **Buy rate**: Rate used when converting FROM EUR TO USD (what you get) - **Sell rate**: Rate used when converting FROM USD TO EUR (what you pay)  The rates are updated in real-time and reflect current market conditions.

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

api_instance = Devdraft::ExchangeRatesApi.new

begin
  # Get EUR to USD exchange rate
  result = api_instance.exchange_rate_controller_get_eurto_usd_rate
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling ExchangeRatesApi->exchange_rate_controller_get_eurto_usd_rate: #{e}"
end
```

#### Using the exchange_rate_controller_get_eurto_usd_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRateResponseDto>, Integer, Hash)> exchange_rate_controller_get_eurto_usd_rate_with_http_info

```ruby
begin
  # Get EUR to USD exchange rate
  data, status_code, headers = api_instance.exchange_rate_controller_get_eurto_usd_rate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRateResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling ExchangeRatesApi->exchange_rate_controller_get_eurto_usd_rate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ExchangeRateResponseDto**](ExchangeRateResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_rate_controller_get_exchange_rate

> <ExchangeRateResponseDto> exchange_rate_controller_get_exchange_rate(from, to)

Get exchange rate between specified currencies

Retrieves the current exchange rate between two specified currencies.      This flexible endpoint allows you to get exchange rates for any supported currency pair: - Supports USD and EUR currency codes - Provides comprehensive rate information - Real-time market data  ## Supported Currency Pairs - USD to EUR (USDC to EURC) - EUR to USD (EURC to USDC)  ## Query Parameters - **from**: Source currency code (usd, eur) - **to**: Target currency code (usd, eur)  ## Use Cases - Flexible exchange rate queries - Multi-currency application support - Dynamic currency conversion calculations - Financial analytics and reporting  ## Rate Information All rates are provided with full market context including mid-market, buy, and sell rates.

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

api_instance = Devdraft::ExchangeRatesApi.new
from = 'usd' # String | Source currency code (e.g., usd)
to = 'eur' # String | Target currency code (e.g., eur)

begin
  # Get exchange rate between specified currencies
  result = api_instance.exchange_rate_controller_get_exchange_rate(from, to)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling ExchangeRatesApi->exchange_rate_controller_get_exchange_rate: #{e}"
end
```

#### Using the exchange_rate_controller_get_exchange_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRateResponseDto>, Integer, Hash)> exchange_rate_controller_get_exchange_rate_with_http_info(from, to)

```ruby
begin
  # Get exchange rate between specified currencies
  data, status_code, headers = api_instance.exchange_rate_controller_get_exchange_rate_with_http_info(from, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRateResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling ExchangeRatesApi->exchange_rate_controller_get_exchange_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Source currency code (e.g., usd) |  |
| **to** | **String** | Target currency code (e.g., eur) |  |

### Return type

[**ExchangeRateResponseDto**](ExchangeRateResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_rate_controller_get_usdto_eur_rate

> <ExchangeRateResponseDto> exchange_rate_controller_get_usdto_eur_rate

Get USD to EUR exchange rate

Retrieves the current exchange rate for converting USD to EUR (USDC to EURC).      This endpoint provides real-time exchange rate information for stablecoin conversions: - Mid-market rate for reference pricing - Buy rate for actual conversion calculations - Sell rate for reverse conversion scenarios  ## Use Cases - Display current exchange rates in dashboards - Calculate conversion amounts for USDC to EURC transfers - Financial reporting and analytics - Real-time pricing for multi-currency operations  ## Rate Information - **Mid-market rate**: The theoretical middle rate between buy and sell - **Buy rate**: Rate used when converting FROM USD TO EUR (what you get) - **Sell rate**: Rate used when converting FROM EUR TO USD (what you pay)  The rates are updated in real-time and reflect current market conditions.

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

api_instance = Devdraft::ExchangeRatesApi.new

begin
  # Get USD to EUR exchange rate
  result = api_instance.exchange_rate_controller_get_usdto_eur_rate
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling ExchangeRatesApi->exchange_rate_controller_get_usdto_eur_rate: #{e}"
end
```

#### Using the exchange_rate_controller_get_usdto_eur_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRateResponseDto>, Integer, Hash)> exchange_rate_controller_get_usdto_eur_rate_with_http_info

```ruby
begin
  # Get USD to EUR exchange rate
  data, status_code, headers = api_instance.exchange_rate_controller_get_usdto_eur_rate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRateResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling ExchangeRatesApi->exchange_rate_controller_get_usdto_eur_rate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ExchangeRateResponseDto**](ExchangeRateResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

