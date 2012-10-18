#require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster.
  unless ENV['DRB']
    require 'simplecov'
    SimpleCov.start 'rails'
  end

  ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/mocks/standalone'
  require 'rspec/autorun'
  require 'capybara/rspec'
  require 'capybara/rails'
  require 'email_spec'
  require 'database_cleaner'

  Dir[Rails.root.join('spec/support/**/*.rb')].each {|f| require f}
  counter = -1
  RSpec.configure do |config|
    config.mock_with :rspec # mocha rspec flexmock rr
    # config.fixture_path = "#{::Rails.root}/spec/fixtures"
    # config.use_transactional_fixtures = true

    config.before(:suite) do
      DatabaseCleaner.clean_with :truncation
      DatabaseCleaner.strategy = :transaction
      # DatabaseCleaner.strategy = :truncation
    end

    config.before(:each) do
      DatabaseCleaner.start
    end
      # if example.metadata[:elastic]
      # Orgunit.tire.index.delete
      # Orgunit.create_elasticsearch_index
      # Userprofile.tire.index.delete
      # Userprofile.create_elasticsearch_index
      # Mpay.tire.index.delete
      # Mpay.create_elasticsearch_index

    config.after(:each) do
      DatabaseCleaner.clean
      counter += 1
      if counter > 15
        GC.enable
        GC.start
        GC.disable
        counter = 0
      end
    end

    config.after(:suite) do
      counter = 0
    end

    # config.before(:each){ load File.expand_path(File.dirname(__FILE__) + "/support/blueprints.rb") }
    # config.infer_base_class_for_anonymous_controllers = false
    # @request.host = 'test.urkraft.se'
    end

   def test_sign_in(user)
     user.confirm!
     controller.sign_in user
   end

  # Webrat.configure { |config|  config.mode = :rails }
  ActiveSupport::Dependencies.clear
end

Spork.each_run do
  silence_warnings do
    Dir["#{Rails.root}/app/*/.rb"].each { |f| load f }
  end
end

# code outside will be run during preforking AND during each_run!
