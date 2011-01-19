ENV["RAILS_ENV"] = "test"
dir = File.dirname(__FILE__)
require File.expand_path(dir + "/../../config/environment")
require 'spec'
require 'spec/rails'
require "webrat"
require 'saucelabs_adapter'
require 'saucelabs_adapter/rspec_adapter'
require dir + '/../spec_helper'

Webrat.configure do |config|
  config.mode = :selenium
end

