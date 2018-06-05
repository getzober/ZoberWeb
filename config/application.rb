require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Zoberv11
  :nodoc
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Locale config
    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en]
    config.i18n.load_path +=
      Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
      #, "#{config.root}/app/models/ckeditor/*"

    config.generators do |g|
      # Disable CoffeeScript
      g.javascript_engine :js
      # Configure RSpec and FactoryBot
      g.test_framework :rspec,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: true,
                       fixtures: true # Use fixture replacements (factories)
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end
  end
end
