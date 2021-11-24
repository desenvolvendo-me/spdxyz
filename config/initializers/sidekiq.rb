Sidekiq.configure_client do |config|
  config.redis = if Rails.env.production?
                   { url: ENV['REDIS_URL'], password: ENV['REDIS_PASSWORD'], size: 4, network_timeout: 5 }
                 else
                   { url: 'redis://0.0.0.0:63791/7', size: 4, network_timeout: 5 }
                 end
end

Sidekiq.configure_server do |config|
  config.redis = if Rails.env.production?
                   { url: ENV['REDIS_URL'], password: ENV['REDIS_PASSWORD'], size: 4, network_timeout: 5 }
                 else
                   { url: 'redis://0.0.0.0:63791/7', size: 4, network_timeout: 5 }
                 end
end