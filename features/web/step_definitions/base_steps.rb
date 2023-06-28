And(/^user click button "([^"]*)" on page$/) do |button_name|
  sleep 1
  click_button("#{button_name}")
end

Then(/^validate page have content "([^"]*)" exist$/) do |page_content|
  sleep 2
  expect(page).to have_content(page_content)
end

And(/^user click link "([^"]*)" on page$/) do |link_name|
  sleep 1
  click_link("#{link_name}")
  sleep 1
end

Then(/^user see error message "([^"]*)"$/) do |error_message|
  sleep 2
  expect(page).to have_content(error_message)
end

And(/^user click text "([^"]*)" on page$/) do |text_name|
  sleep 1
  find('label', text: "#{text_name}").click
  sleep 1
end

And(/^user visit url "([^"]*)"$/) do |url_name|
  visit(ENV['BASE_URL'] + url_name)
  sleep 1
end

And(/^user click span text "([^"]*)" on page$/) do |text_name|
  sleep 1
  first('span', text: "#{text_name}").click
  sleep 1
end

And(/^user scroll down "([^"]*)" px on page$/) do |px_number|
  sleep 1
  scroll_down(px_number)
  sleep 1
end

And(/^user click div text "([^"]*)" on page$/) do |text_name|
  sleep 1
  find('div', text: "#{text_name}").click
  sleep 1
end
