#!/usr/bin/env rackup
# encoding: utf-8

# require File.expand_path('../config/boot.rb', __FILE__)
require_relative 'config/boot.rb'

run Rack::URLMap.new \
  '/v1' => Muber::API::V1.new
