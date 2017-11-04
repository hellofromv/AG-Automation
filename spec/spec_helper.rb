require "rubygems"
require "selenium-webdriver"
require "rspec"
require "require_all"

begin
  require_all "#{File.join(File.expand_path(File.dirname(__FILE__)), '..', 'pages')}"
rescue
  puts "No page objects found."
end

RSpec.configure do | config |
  config.before(:each) do
    @driver = Selenium::WebDriver.for :firefox
  end

  config.after(:each) do
    @driver.quit()
  end
end