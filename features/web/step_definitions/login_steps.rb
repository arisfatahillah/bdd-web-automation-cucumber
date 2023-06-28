Given(/^user go to login page/) do
  @browser = LoginPage.new
  @browser.load
end

When(/^user input field username "([^"]*)"/) do |username|
  @browser.input_username(username)
end

When(/^user input field password "([^"]*)"/) do |password|
  @browser.input_password(password)
end

Then(/^validate user successfully login/) do
  expect(page).to have_content('Go To Book Store')
end