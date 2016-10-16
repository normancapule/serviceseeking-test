# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'simplecov'
require 'spec_helper'
require 'rspec/rails'

require 'database_cleaner'
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

Rails.logger.level = 4

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.order = "random"

  config.use_transactional_fixtures = true
  config.filter_rails_from_backtrace!

  config.infer_spec_type_from_file_location!
end
