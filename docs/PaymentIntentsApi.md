# Devdraft::PaymentIntentsApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payment_intent_controller_create_bank_payment_intent**](PaymentIntentsApi.md#payment_intent_controller_create_bank_payment_intent) | **POST** /api/v0/payment-intents/bank | Create a bank payment intent |
| [**payment_intent_controller_create_stable_payment_intent**](PaymentIntentsApi.md#payment_intent_controller_create_stable_payment_intent) | **POST** /api/v0/payment-intents/stablecoin | Create a stable payment intent |


## payment_intent_controller_create_bank_payment_intent

> payment_intent_controller_create_bank_payment_intent(idempotency_key, create_bank_payment_intent_dto)

Create a bank payment intent

Creates a new bank payment intent for fiat-to-stablecoin transfers.      This endpoint allows you to create payment intents for bank transfers (ACH, Wire, SEPA) that convert to stablecoins. Perfect for onboarding users from traditional banking to crypto.  ## Supported Payment Rails - **ACH_PUSH**: US bank transfers (same-day or standard) - **WIRE**: International wire transfers - **SEPA**: European bank transfers  ## Use Cases - USD bank account to USDC conversion - EUR bank account to EURC conversion - MXN bank account to stablecoin conversion - Flexible amount payment intents for variable pricing  ## Supported Source Currencies - **USD**: US Dollar - **EUR**: Euro - **MXN**: Mexican Peso  ## Example: USD Bank to USDC ```json {   \"sourcePaymentRail\": \"ach_push\",   \"sourceCurrency\": \"usd\",   \"destinationCurrency\": \"usdc\",   \"destinationNetwork\": \"ethereum\",   \"destinationAddress\": \"0x742d35Cc6634C0532925a3b8D4C9db96c4b4d8e1\",   \"amount\": \"1000.00\",   \"customer_first_name\": \"John\",   \"customer_last_name\": \"Doe\",   \"customer_email\": \"john.doe@example.com\",   \"ach_reference\": \"INV12345\" } ```  ## Reference Fields Use appropriate reference fields based on the payment rail: - `ach_reference`: For ACH transfers (max 10 chars, alphanumeric + spaces) - `wire_message`: For wire transfers (max 256 chars) - `sepa_reference`: For SEPA transfers (6-140 chars, specific character set)  ## Idempotency Include an `idempotency-key` header with a unique UUID v4 to prevent duplicate payments. Subsequent requests with the same key will return the original response.

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

api_instance = Devdraft::PaymentIntentsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique UUID v4 for idempotent requests. Prevents duplicate payments.
create_bank_payment_intent_dto = Devdraft::CreateBankPaymentIntentDto.new({source_payment_rail: Devdraft::BridgePaymentRail::ETHEREUM, source_currency: Devdraft::FiatCurrency::USD, destination_currency: Devdraft::StableCoinCurrency::USDC, destination_network: Devdraft::BridgePaymentRail::ETHEREUM}) # CreateBankPaymentIntentDto | Bank payment intent creation data

begin
  # Create a bank payment intent
  api_instance.payment_intent_controller_create_bank_payment_intent(idempotency_key, create_bank_payment_intent_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentIntentsApi->payment_intent_controller_create_bank_payment_intent: #{e}"
end
```

#### Using the payment_intent_controller_create_bank_payment_intent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_intent_controller_create_bank_payment_intent_with_http_info(idempotency_key, create_bank_payment_intent_dto)

```ruby
begin
  # Create a bank payment intent
  data, status_code, headers = api_instance.payment_intent_controller_create_bank_payment_intent_with_http_info(idempotency_key, create_bank_payment_intent_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentIntentsApi->payment_intent_controller_create_bank_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique UUID v4 for idempotent requests. Prevents duplicate payments. |  |
| **create_bank_payment_intent_dto** | [**CreateBankPaymentIntentDto**](CreateBankPaymentIntentDto.md) | Bank payment intent creation data |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payment_intent_controller_create_stable_payment_intent

> payment_intent_controller_create_stable_payment_intent(idempotency_key, create_stable_payment_intent_dto)

Create a stable payment intent

Creates a new stable payment intent for stablecoin-to-stablecoin transfers.      This endpoint allows you to create payment intents for transfers between different stablecoins and networks. Perfect for cross-chain stablecoin swaps and conversions.  ## Use Cases - USDC to EURC conversions - Cross-chain stablecoin transfers (e.g., Ethereum USDC to Polygon USDC) - Flexible amount payment intents for dynamic pricing  ## Example: USDC to EURC Conversion ```json {   \"sourceCurrency\": \"usdc\",   \"sourceNetwork\": \"ethereum\",   \"destinationCurrency\": \"eurc\",   \"destinationNetwork\": \"polygon\",   \"destinationAddress\": \"0x742d35Cc6634C0532925a3b8D4C9db96c4b4d8e1\",   \"amount\": \"100.00\",   \"customer_first_name\": \"John\",   \"customer_last_name\": \"Doe\",   \"customer_email\": \"john.doe@example.com\" } ```  ## Flexible Amount Payments Omit the `amount` field to create a flexible payment intent where users can specify the amount during payment.  ## Idempotency Include an `idempotency-key` header with a unique UUID v4 to prevent duplicate payments. Subsequent requests with the same key will return the original response.

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

api_instance = Devdraft::PaymentIntentsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique UUID v4 for idempotent requests. Prevents duplicate payments.
create_stable_payment_intent_dto = Devdraft::CreateStablePaymentIntentDto.new({source_currency: Devdraft::StableCoinCurrency::USDC, source_network: Devdraft::BridgePaymentRail::ETHEREUM, destination_network: Devdraft::BridgePaymentRail::ETHEREUM}) # CreateStablePaymentIntentDto | Stable payment intent creation data

begin
  # Create a stable payment intent
  api_instance.payment_intent_controller_create_stable_payment_intent(idempotency_key, create_stable_payment_intent_dto)
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentIntentsApi->payment_intent_controller_create_stable_payment_intent: #{e}"
end
```

#### Using the payment_intent_controller_create_stable_payment_intent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_intent_controller_create_stable_payment_intent_with_http_info(idempotency_key, create_stable_payment_intent_dto)

```ruby
begin
  # Create a stable payment intent
  data, status_code, headers = api_instance.payment_intent_controller_create_stable_payment_intent_with_http_info(idempotency_key, create_stable_payment_intent_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Devdraft::ApiError => e
  puts "Error when calling PaymentIntentsApi->payment_intent_controller_create_stable_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique UUID v4 for idempotent requests. Prevents duplicate payments. |  |
| **create_stable_payment_intent_dto** | [**CreateStablePaymentIntentDto**](CreateStablePaymentIntentDto.md) | Stable payment intent creation data |  |

### Return type

nil (empty response body)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

