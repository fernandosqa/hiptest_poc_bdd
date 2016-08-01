require 'rspec'
require 'yaml'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'capybara'
# require 'capybara/cucumber'
# require 'capybara/poltergeist'

#DEFAULT_DATA = YAML.load_file('./fixtures/data.yml')
#ENV_FILE = YAML.load_file('./fixtures/environment.yml')

Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' => ['--start-maximized'] })
  $driver = Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end

Capybara.configure do |config|
  config.default_max_wait_time = 60
  config.default_driver = :selenium
  config.javascript_driver = :selenium
end

# Capybara.configure do |config|
#   config.current_driver = :selenium
#   config.default_max_wait_time = 3
#   Capybara.page.driver.browser.manage.window.maximize
# end

ENV['SITE']
ENV['ENV']
