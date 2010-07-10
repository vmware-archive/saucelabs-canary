ENV["RAILS_ENV"] = "test"
dir = File.dirname(__FILE__)
require File.expand_path(dir + "/../../config/environment")
require 'spec'
require 'spec/rails'
require "webrat"
require 'saucelabs_adapter'

Webrat.configure do |config|
  config.mode = :selenium
end

