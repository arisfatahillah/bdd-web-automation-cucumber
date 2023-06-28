require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'capybara/poltergeist'
require 'dotenv'

# add support for API
require "rspec/retry"
require "pry"
require "dotenv"
require "httparty"
require "nokogiri"
require "logger"
require 'faker'

Dotenv.load

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

Capybara.register_driver :selenium do |app|

  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        # 'args' => [ "--start-maximized", "headless"]
        'args' => [ "--start-maximized", "--disable-dev-shm-usage", "--no-sandbox"]
      }
    )
  )
  elsif BROWSER.eql?('firefox')
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['geo.enabled'] = true
    profile['geo.prompt.testing'] = true
    profile['geo.prompt.testing.allow'] = true
    options = Selenium::WebDriver::Firefox::Options.new(profile: profile)
    Capybara::Selenium::Driver.new(app, :browser => :firefox, options: options)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end

Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false
