# frozen_string_literal: true

# Webhook Examples

require_relative '../lib/devdraft'

def simple_create_webhook
  configuration = Devdraft::Configuration.new
  
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::WebhooksApi.new(configuration)
  
  webhook_data = Devdraft::CreateWebhookDto.new({
    url: 'https://your-app.com/webhooks/payment',
    events: ['payment.created', 'payment.succeeded']
  })
  
  begin
    webhook = api_instance.webhook_controller_create(webhook_data)
    puts "Webhook created: #{webhook.id}"
    puts "Webhook URL: #{webhook.url}"
    webhook
  rescue Devdraft::ApiError => e
    puts "Webhook creation failed: #{e.message}"
    raise
  end
end

if __FILE__ == $0
  simple_create_webhook
end
