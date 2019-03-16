require "test_helper"
#require 'selenium-webdriver'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  Capybara.javascript_driver = :selenium_remote_chrome
  Capybara.register_driver "selenium_remote_chrome".to_sym do |app|
    Capybara::Selenium::Driver.new(app, browser: :remote, url: "http://localhost:4444/wd/hub", desired_capabilities: caps)
  end

  driven_by :selenium_remote_chrome
end
