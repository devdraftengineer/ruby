# frozen_string_literal: true

# Payment Examples
# 
# These examples demonstrate how to process payments, retrieve payment details,
# and handle refunds.

require_relative '../lib/devdraft'
require 'securerandom'

# ============================================================================
# Simple Example: Create a Payment
# ============================================================================

def simple_create_payment
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::TestPaymentsApi.new(configuration)
  
  payment_request = Devdraft::PaymentRequestDto.new({
    amount: 100.50,
    currency: 'USD',
    description: 'Test payment for order #12345',
    customer_id: 'cus_12345'
  })
  
  idempotency_key = "payment_#{SecureRandom.uuid}"
  
  begin
    response = api_instance.test_payment_controller_create_payment_v0(
      idempotency_key,
      payment_request
    )
    puts "Payment created: #{response.id}"
    puts "Status: #{response.status}"
    response
  rescue Devdraft::ApiError => e
    puts "Payment creation failed: #{e.message}"
    raise
  end
end

# ============================================================================
# Advanced Example: Payment Workflow with Retry Logic
# ============================================================================

def advanced_payment_workflow
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::TestPaymentsApi.new(configuration)
  
  # Step 1: Create payment with idempotency key
  idempotency_key = "payment_#{Time.now.to_i}_#{SecureRandom.uuid}"
  payment_request = Devdraft::PaymentRequestDto.new({
    amount: 250.00,
    currency: 'USD',
    description: 'Premium subscription payment',
    customer_id: 'cus_premium_001'
  })
  
  payment = nil
  begin
    payment = api_instance.test_payment_controller_create_payment_v0(
      idempotency_key,
      payment_request
    )
    puts "✅ Payment created: #{payment.id}"
  rescue Devdraft::ApiError => e
    if e.code == 409
      puts "⚠️  Payment already exists with this idempotency key"
      # In a real scenario, you would extract payment ID from error
    else
      raise
    end
  end
  
  # Step 2: Retrieve payment details
  if payment && payment.id
    begin
      payment_details = api_instance.test_payment_controller_get_payment_v0(payment.id)
      puts "Payment details retrieved: {"
      puts "  'id': #{payment_details.id},"
      puts "  'amount': #{payment_details.amount},"
      puts "  'status': #{payment_details.status},"
      puts "  'timestamp': #{payment_details.timestamp}"
      puts "}"
    rescue Devdraft::ApiError => e
      puts "Failed to retrieve payment: #{e.message}"
    end
  end
  
  payment
end

# ============================================================================
# Error Scenario: Handling Payment Errors
# ============================================================================

def error_scenario_payments
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::TestPaymentsApi.new(configuration)
  
  # Scenario 1: Missing idempotency key
  begin
    payment_request = Devdraft::PaymentRequestDto.new({
      amount: 100,
      currency: 'USD',
      description: 'Test',
      customer_id: 'cus_123'
    })
    api_instance.test_payment_controller_create_payment_v0('', payment_request) # Missing idempotency key
  rescue Devdraft::ApiError => e
    if e.code == 400
      puts "❌ Bad Request: Idempotency key is required"
    end
  end
  
  # Scenario 2: Invalid payment data
  begin
    invalid_payment_request = Devdraft::PaymentRequestDto.new({
      amount: -100, # Invalid amount
      currency: 'USD',
      description: '',
      customer_id: ''
    })
    api_instance.test_payment_controller_create_payment_v0(
      "payment_#{SecureRandom.uuid}",
      invalid_payment_request
    )
  rescue Devdraft::ApiError => e
    if e.code == 400
      puts "❌ Bad Request: Invalid payment data"
    end
  end
  
  # Scenario 3: Rate limiting
  10.times do |i|
    begin
      payment_request = Devdraft::PaymentRequestDto.new({
        amount: 100,
        currency: 'USD',
        description: 'Test',
        customer_id: 'cus_123'
      })
      api_instance.test_payment_controller_create_payment_v0(
        "payment_#{SecureRandom.uuid}",
        payment_request
      )
    rescue Devdraft::ApiError => e
      if e.code == 429
        puts "❌ Rate limit exceeded. Please wait before retrying."
        break
      end
    end
  end
end

# ============================================================================
# Refund Example
# ============================================================================

def refund_payment_example(payment_id)
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::TestPaymentsApi.new(configuration)
  idempotency_key = "refund_#{SecureRandom.uuid}"
  
  begin
    refund = api_instance.test_payment_controller_refund_payment_v0(
      payment_id,
      idempotency_key
    )
    puts "✅ Refund processed: #{refund.id}"
    puts "Refund amount: #{refund.amount}"
    puts "Refund status: #{refund.status}"
    refund
  rescue Devdraft::ApiError => e
    case e.code
    when 400
      puts "❌ Bad Request: Invalid refund request"
    when 404
      puts "❌ Payment not found"
    else
      puts "❌ Refund failed: #{e.message}"
    end
    raise
  end
end

# Run examples
if __FILE__ == $0
  simple_create_payment
end
