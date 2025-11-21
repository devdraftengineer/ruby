# frozen_string_literal: true

# Customer Examples

require_relative '../lib/devdraft'

def simple_create_customer
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::CustomersApi.new(configuration)
  
  customer_data = Devdraft::CreateCustomerDto.new({
    first_name: 'John',
    last_name: 'Doe',
    email: 'john.doe@example.com',
    phone_number: '+1-555-123-4567',
    customer_type: Devdraft::CustomerType::STARTUP,
    status: Devdraft::CustomerStatus::ACTIVE
  })
  
  begin
    customer = api_instance.customer_controller_create(customer_data)
    puts "Customer created: #{customer.id}"
    customer
  rescue Devdraft::ApiError => e
    puts "Customer creation failed: #{e.message}"
    raise
  end
end

if __FILE__ == $0
  simple_create_customer
end
