# frozen_string_literal: true

# Health Check Examples
# 
# These examples demonstrate how to use the health check endpoints.

require_relative '../lib/devdraft'

# ============================================================================
# Simple Example: Public Health Check
# ============================================================================

def simple_public_health_check
  api_instance = Devdraft::APIHealthApi.new
  
  begin
    response = api_instance.health_controller_public_health_check_v0
    puts "Service status: #{response.status}"
    puts "Service is healthy: #{response.status == 'ok'}"
  rescue Devdraft::ApiError => e
    puts "Health check failed: #{e.message}"
  end
end

# ============================================================================
# Advanced Example: Authenticated Health Check with Error Handling
# ============================================================================

def advanced_authenticated_health_check
  configuration = Devdraft::Configuration.new
  
  # Configure API key authorization
  client_key = ENV['CLIENT_KEY'] || 'your-client-key'
  client_secret = ENV['CLIENT_SECRET'] || 'your-client-secret'
  
  configuration.api_key['x-client-key'] = client_key
  configuration.api_key['x-client-secret'] = client_secret
  
  api_instance = Devdraft::APIHealthApi.new(configuration)
  
  begin
    response = api_instance.health_controller_check_v0
    
    puts "=== Health Check Results ==="
    puts "Status: #{response.status}"
    puts "Version: #{response.version}"
    puts "Database: #{response.database}"
    puts "Message: #{response.message}"
    puts "Authenticated: #{response.authenticated}"
    puts "Timestamp: #{response.timestamp}"
    
    # Check if service is healthy
    if response.status == 'ok' && response.database == 'connected'
      puts "✅ Service is fully operational"
    else
      puts "⚠️  Service may have issues"
    end
  rescue Devdraft::ApiError => e
    if e.code == 401
      puts "❌ Authentication failed. Please check your API keys."
    else
      puts "❌ Request failed: #{e.message}"
    end
  end
end

# ============================================================================
# Error Scenario: Handling Authentication Errors
# ============================================================================

def error_scenario_health_check
  configuration = Devdraft::Configuration.new
  
  # Intentionally wrong API key
  configuration.api_key['x-client-key'] = 'invalid-key'
  configuration.api_key['x-client-secret'] = 'invalid-secret'
  
  api_instance = Devdraft::APIHealthApi.new(configuration)
  
  begin
    api_instance.health_controller_check_v0
  rescue Devdraft::ApiError => e
    case e.code
    when 401
      puts "❌ Unauthorized: Invalid API credentials"
      puts "Please verify your CLIENT_KEY and CLIENT_SECRET environment variables"
    when 429
      puts "❌ Rate limit exceeded. Please wait before retrying."
    else
      puts "❌ Unexpected error: #{e.message}"
    end
  end
end

# Run examples
if __FILE__ == $0
  simple_public_health_check
  advanced_authenticated_health_check
end
