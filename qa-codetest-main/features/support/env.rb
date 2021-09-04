require 'rubygems'
require "capybara/cucumber"
require "selenium/webdriver"
require 'yaml'
require 'json'
require 'os'
require 'report_builder'

ENV['run'] ||= 'local'
ENV['browser'] ||= 'chrome'
ENV['sys'] ||= 'windows'

$filePath = Dir.pwd.gsub('/','/')+"/features/support/"

@lang = ENV['app_lang']

if ENV['run'] == 'local'
  capabilities = {
      commandTimeout: 600
  }
  if ENV['browser'] == 'chrome'
    Capybara.default_driver = :selenium
    browserName = :chrome
  end
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,
                                   browser: browserName,
                                   desired_capabilities: capabilities
    )
  end

  Capybara.default_max_wait_time = 10
  window = Capybara.current_session.driver.browser.manage.window
  window.maximize()
end