require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'random_token'

class AppiumWorld
end


caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
Appium::Driver.new(caps)
wait = Selenium::WebDriver::Wait.new :timeout => 5


Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

RAN2A = RandomToken.gen('%2a')



Before { $driver.start_driver }
After { $driver.driver_quit }

