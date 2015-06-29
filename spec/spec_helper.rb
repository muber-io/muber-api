RACK_ENV = 'test' unless defined?(RACK_ENV)

require_relative '../config/boot.rb'

require 'rack/test'

Dir.glob(ROOT + '/spec/factories/*.rb').each { |f| require f }

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Mongoid::Matchers
  config.include FactoryGirl::Syntax::Methods

  config.before :suite do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with :truncation
  end

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end

  def app
    @app ||= Muber::API::V1
  end
end
