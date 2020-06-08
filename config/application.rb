require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Adminframeworks
  class Application < Rails::Application
    config.load_defaults 6.0

    config.generators.system_tests = nil

    config.generators.test_framework :rspec
    config.generators.fixture_replacement :factory_bot, dir: 'spec/factories'
  end
end
