require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Code
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # config.assets.precompile += %w(assets/images/*)
    # config.assets.paths << Rails.root.join("images", "/vendor/assets/images")

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.targomo_key  = ENV['RAILS_TARGOMO']
    config.bing_key     = ENV['RAILS_BING']
    config.here_id      = ENV["RAILS_HERE_ID"]
    config.here_code    = ENV["RAILS_HERE_CODE"]
    config.mapbox_token = ENV["RAILS_MAPBOX"]
    config.api_server   = ENV["RAILS_API_SERVER"]
  end
end
