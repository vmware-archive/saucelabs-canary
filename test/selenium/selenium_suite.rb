require File.join(File.dirname(__FILE__), '..', 'test_helper')
require 'webrat'

Webrat.configure do |config|
  config.mode = :selenium
end

require File.join(File.dirname(__FILE__), 'widget_test')