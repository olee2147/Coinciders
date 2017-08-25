require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Coinciders
  class Application < Rails::Application
    ActionMailer::Base.smtp_settings = {
      :address => "smtp.mailgun.org",
      :port => "587",
      :domain => "sandbox41ac2926a7754ec89ebaf676d0c56d26.mailgun.org",
      :user_name => "dong.k.woo@sandbox41ac2926a7754ec89ebaf676d0c56d26.mailgun.org",
      :password => "myGmailPassword",
      :authentication => "login",
      :enable_starttls_auto => true
    }
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
