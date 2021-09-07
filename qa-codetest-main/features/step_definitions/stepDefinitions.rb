require 'yaml'
require 'rubygems'
require 'selenium-cucumber'
require 'selenium-webdriver'
require 'rspec'

# require 'os'
$cfg = YAML.load_file("#{$filePath}objectRepository.yaml")
time = Time.now
String date = time.strftime("%B %d, " + "%Y")

# Example of accessing object repository:
# find(:xpath, $cfg['key'], wait:30).click
#
# Example of visiting the url
# visit 'https://americas.datasite.com'

Given('Open the app url') do
  visit 'https://americas.datasite.com'
  sleep 10
end

##################
### Scenario_1 ###
##################

Given('I enter username') do
  find(:id, 'username').click
  find(:id, 'username').send_keys('test.emailtest.com')
end

Given('I enter password') do
  find(:id, 'password').click
  find(:id, 'password').send_keys('P455w0rd')
end

When('I click on LOG IN button') do
  find(:css, $cfg['logInButton'], wait:10).click
end

Then('Error message is displayed') do
end

##################
### Scenario_2 ###
##################

Given('I click on Forgot Password') do
  find(:xpath, $cfg['forGotPw']).click
end

When('I click on the SUBMIT button') do
  find(:css, '.primary').click
end

Then('Email required message is displayed') do
  # find(:xpath, $cfg['submit']).click
  expect(find(:css, $cfg['emailErrorLoc']).text).to eq($cfg['emailError'])
end

##################
### Scenario_3 ###
##################

Given("Click on TERMS OF USE") do
  find(:xpath, $cfg['TOSLink'], wait:30).click
end

Given("Click on Language drop down and Verify languages") do
  find(:css, $cfg['langDropDown'], wait:10).click
  expect(find(:xpath, $cfg['Français']).text).to eq("Français")
  expect(find(:xpath, $cfg['Deutsch']).text).to eq("Deutsch")
  expect(find(:xpath, $cfg['中文']).text).to eq("中文")
  expect(find(:xpath, $cfg['日本語']).text).to eq("日本語")
  expect(find(:xpath, $cfg['Español']).text).to eq("Español")
  expect(find(:xpath, $cfg['Italiano']).text).to eq("Italiano")
end

Given("Validate Effective as of is today's date") do
  expect(find(:css, $cfg['dateLoc']).text).to eq("Effective as of " + date)
end

Then("Verify page url") do
  expect(Capybara.current_session.driver.browser.current_url).to eq($cfg['tosURL'])
end