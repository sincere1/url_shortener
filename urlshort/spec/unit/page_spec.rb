require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.app_host = "http://nginx" # Using Selenium; connect over network
Capybara.run_server = false # Disable Rack since we are using Selenium.
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://#{ENV['SELENIUM_HOST']}:#{ENV['SELENIUM_PORT']}/wd/hub",
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      "chromeOptions" => {
        "args" => ['--no-default-browser-check']
      }
    )
  )
end
Capybara.default_driver = :selenium

describe "Example page render unit tests" do
  it "should show a Shorten button" do
    visit("/")
    expect(page.has_selector? 'button.btn.btn-primary.btn-lg.btn-block', text: 'Shorten').to be true
  end
end
