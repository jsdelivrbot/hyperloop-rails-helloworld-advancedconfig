        
Hyperloop.configuration do |config|
  config.transport = :simple_poller
  config.console_auto_start = false unless Rails.env.production?
end

