require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HyperloopRailsHelloworldAdvancedconfig
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ###########################################
    # Hyperloop config for advanced configuration
    ###########################################

    config.hyperloop.auto_config = false

    config.eager_load_paths += %W(#{config.root}/app/models/public)
    config.autoload_paths += %W(#{config.root}/app/models/public)
    config.autoload_paths   += %W(#{config.root}/app/myhyperloop/operations)
    config.autoload_paths   += %W(#{config.root}/app/myhyperloop/stores)

    config.assets.paths << ::Rails.root.join('app', 'models').to_s
    config.assets.paths << ::Rails.root.join('app', 'myhyperloop').to_s

    ###########################################
    # Hyperloop config for production mode
    ###########################################

    config.autoload_paths   -= %W(#{config.root}/app/myhyperloop)
    config.eager_load_paths -= %W(#{config.root}/app/myhyperloop)

    config.eager_load_paths += %W(#{config.root}/app/models)
    config.autoload_paths += %W(#{config.root}/app/models)
    
    config.eager_load_paths += %W(#{config.root}/app/myhyperloop/operations)
    
  end
end
