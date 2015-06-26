require 'rubygems' unless defined?(Gem)
require 'bundler/setup'

RACK_ENV = ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)
ROOT     = File.expand_path('../..', __FILE__) unless defined?(ROOT)

Bundler.require(:default, RACK_ENV)

require_relative 'database.rb'

require_relative '../app/app.rb'
