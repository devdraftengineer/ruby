# frozen_string_literal: true

# Invoice Examples

require_relative '../lib/devdraft'

def simple_create_invoice
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::InvoicesApi.new(configuration)
  
  invoice_data = Devdraft::CreateInvoiceDto.new({
    customer_id: 'cus_12345',
    products: [
      Devdraft::InvoiceProductDto.new({
        product_id: 'prod_123',
        quantity: 2,
        price: 99.99
      })
    ]
  })
  
  begin
    invoice = api_instance.invoice_controller_create(invoice_data)
    puts "Invoice created: #{invoice.id}"
    invoice
  rescue Devdraft::ApiError => e
    puts "Invoice creation failed: #{e.message}"
    raise
  end
end

if __FILE__ == $0
  simple_create_invoice
end
