require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "os"

require_relative "helpers"
World(Helpers)

case ENV["BROWSER"]
when "chrome"
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.load_selenium
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.add_argument("--disable-site-isolation-trials")
      opts.add_argument("--use-fake-ui-for-media-stream")
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end
  @driver = :selenium_chrome
when "firefox"
  @driver = :selenium
when "firefox_headless"
  @driver = :selenium_headless
when "chrome_headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    Capybara::Selenium::Driver.load_selenium
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.add_argument("--headless")
      opts.add_argument("--disable-gpu") if Gem.win_platform?
      opts.add_argument("--disable-site-isolation-trials")
      opts.add_argument("--window-size=1366,768")
      opts.add_argument("--use-fake-ui-for-media-stream")
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end
  @driver = :selenium_chrome_headless
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "https://www.unimed.coop.br/home"
  config.default_max_wait_time = 5
end
