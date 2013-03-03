ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rubygems'
require 'rspec/rails'
require 'rspec/autorun'
require 'spork'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

Spork.prefork do
  RSpec.configure do |config|
    # Including Factory girl DSL
    config.include FactoryGirl::Syntax::Methods

    config.use_transactional_fixtures = true
    config.infer_base_class_for_anonymous_controllers = false

    config.order = "random"
  end

end

Spork.each_run do
end