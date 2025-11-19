# Devdraft::TestPaymentsApi

All URIs are relative to *https://api.devdraft.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**test_payment_controller_create_payment_v0**](TestPaymentsApi.md#test_payment_controller_create_payment_v0) | **POST** /api/v0/test-payment | Process a test payment |
| [**test_payment_controller_get_payment_v0**](TestPaymentsApi.md#test_payment_controller_get_payment_v0) | **GET** /api/v0/test-payment/{id} | Get payment details by ID |
| [**test_payment_controller_refund_payment_v0**](TestPaymentsApi.md#test_payment_controller_refund_payment_v0) | **POST** /api/v0/test-payment/{id}/refund | Refund a payment |


## test_payment_controller_create_payment_v0

> <PaymentResponseDto> test_payment_controller_create_payment_v0(idempotency_key, payment_request_dto)

Process a test payment

Creates a new payment. Requires an idempotency key to prevent duplicate payments on retry.      ## Idempotency Key Best Practices  1. **Generate unique keys**: Use UUIDs or similar unique identifiers, prefixed with a descriptive operation name 2. **Store keys client-side**: Save the key with the original request so you can retry with the same key 3. **Key format**: Between 6-64 alphanumeric characters 4. **Expiration**: Keys expire after 24 hours by default 5. **Use case**: Perfect for ensuring payment operations are never processed twice, even during network failures  ## Example Request (curl)  ```bash curl -X POST \\   https://api.example.com/rest-api/v0/test-payment \\   -H 'Content-Type: application/json' \\   -H 'Client-Key: your-api-key' \\   -H 'Client-Secret: your-api-secret' \\   -H 'Idempotency-Key: payment_123456_unique_key' \\   -d '{     \"amount\": 100.00,     \"currency\": \"USD\",     \"description\": \"Test payment for order #12345\",     \"customerId\": \"cus_12345\"   }' ```  ## Example Response (First Request)  ```json {   \"id\": \"pay_abc123xyz456\",   \"amount\": 100.00,   \"currency\": \"USD\",   \"status\": \"succeeded\",   \"timestamp\": \"2023-07-01T12:00:00.000Z\" } ```  ## Example Response (Duplicate Request)  The exact same response will be returned for any duplicate request with the same idempotency key, without creating a new payment.  ## Retry Scenario Example  Network failure during payment submission: 1. Client creates payment request with idempotency key: \"payment_123456_unique_key\" 2. Request begins processing, but network connection fails before response received 3. Client retries the exact same request with the same idempotency key 4. Server detects duplicate idempotency key and returns the result of the first request 5. No duplicate payment is created  If you retry with same key but different parameters (e.g., different amount), you'll receive a 409 Conflict error.

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

api_instance = Devdraft::TestPaymentsApi.new
idempotency_key = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique key to ensure the request is idempotent. If a request with the same key is sent multiple times, only the first will be processed, and subsequent requests will return the same response.
payment_request_dto = Devdraft::PaymentRequestDto.new({amount: 100.5, currency: 'USD', description: 'Test payment for API'}) # PaymentRequestDto | 

begin
  # Process a test payment
  result = api_instance.test_payment_controller_create_payment_v0(idempotency_key, payment_request_dto)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling TestPaymentsApi->test_payment_controller_create_payment_v0: #{e}"
end
```

#### Using the test_payment_controller_create_payment_v0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponseDto>, Integer, Hash)> test_payment_controller_create_payment_v0_with_http_info(idempotency_key, payment_request_dto)

```ruby
begin
  # Process a test payment
  data, status_code, headers = api_instance.test_payment_controller_create_payment_v0_with_http_info(idempotency_key, payment_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling TestPaymentsApi->test_payment_controller_create_payment_v0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique key to ensure the request is idempotent. If a request with the same key is sent multiple times, only the first will be processed, and subsequent requests will return the same response. |  |
| **payment_request_dto** | [**PaymentRequestDto**](PaymentRequestDto.md) |  |  |

### Return type

[**PaymentResponseDto**](PaymentResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## test_payment_controller_get_payment_v0

> <PaymentResponseDto> test_payment_controller_get_payment_v0(id)

Get payment details by ID

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

api_instance = Devdraft::TestPaymentsApi.new
id = 'id_example' # String | Payment ID

begin
  # Get payment details by ID
  result = api_instance.test_payment_controller_get_payment_v0(id)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling TestPaymentsApi->test_payment_controller_get_payment_v0: #{e}"
end
```

#### Using the test_payment_controller_get_payment_v0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponseDto>, Integer, Hash)> test_payment_controller_get_payment_v0_with_http_info(id)

```ruby
begin
  # Get payment details by ID
  data, status_code, headers = api_instance.test_payment_controller_get_payment_v0_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling TestPaymentsApi->test_payment_controller_get_payment_v0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Payment ID |  |

### Return type

[**PaymentResponseDto**](PaymentResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_payment_controller_refund_payment_v0

> <RefundResponseDto> test_payment_controller_refund_payment_v0(id, idempotency_key)

Refund a payment

Refunds an existing payment. Requires an idempotency key to prevent duplicate refunds on retry.      ## Idempotency Key Benefits for Refunds  Refunds are critical financial operations where duplicates can cause serious issues. Using idempotency keys ensures:  1. **Prevent duplicate refunds**: Even if a request times out or fails, retrying with the same key won't issue multiple refunds 2. **Safe retries**: Network failures or timeouts won't risk creating multiple refunds 3. **Consistent response**: Always get the same response for the same operation  ## Example Request (curl)  ```bash curl -X POST \\   https://api.example.com/rest-api/v0/test-payment/pay_abc123xyz456/refund \\   -H 'Content-Type: application/json' \\   -H 'Client-Key: your-api-key' \\   -H 'Client-Secret: your-api-secret' \\   -H 'Idempotency-Key: refund_123456_unique_key' ```  ## Example Response (First Request)  ```json {   \"id\": \"ref_xyz789\",   \"paymentId\": \"pay_abc123xyz456\",   \"amount\": 100.00,   \"status\": \"succeeded\",   \"timestamp\": \"2023-07-01T14:30:00.000Z\" } ```  ## Example Response (Duplicate Request)  The exact same response will be returned for any duplicate request with the same idempotency key, without creating a new refund.  ## Idempotency Key Guidelines  - Use a unique key for each distinct refund operation - Store keys client-side to ensure you can retry with the same key if needed - Keys expire after 24 hours by default

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

api_instance = Devdraft::TestPaymentsApi.new
id = 'id_example' # String | Payment ID to refund
idempotency_key = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique key to ensure the refund request is idempotent. If a request with the same key is sent multiple times, only the first will be processed, and subsequent requests will return the same response.

begin
  # Refund a payment
  result = api_instance.test_payment_controller_refund_payment_v0(id, idempotency_key)
  p result
rescue Devdraft::ApiError => e
  puts "Error when calling TestPaymentsApi->test_payment_controller_refund_payment_v0: #{e}"
end
```

#### Using the test_payment_controller_refund_payment_v0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponseDto>, Integer, Hash)> test_payment_controller_refund_payment_v0_with_http_info(id, idempotency_key)

```ruby
begin
  # Refund a payment
  data, status_code, headers = api_instance.test_payment_controller_refund_payment_v0_with_http_info(id, idempotency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponseDto>
rescue Devdraft::ApiError => e
  puts "Error when calling TestPaymentsApi->test_payment_controller_refund_payment_v0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Payment ID to refund |  |
| **idempotency_key** | **String** | Unique key to ensure the refund request is idempotent. If a request with the same key is sent multiple times, only the first will be processed, and subsequent requests will return the same response. |  |

### Return type

[**RefundResponseDto**](RefundResponseDto.md)

### Authorization

[x-client-secret](../README.md#x-client-secret), [x-client-key](../README.md#x-client-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

