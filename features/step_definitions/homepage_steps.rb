Given (/^App is loaded$/) do
end

When(/^I am on the homepage$/) do
  visit "/"
end

Then /^The title should be "(.*?)"$/ do |title|
  expect(page.status_code) == 200
  expect(page).to have_title title
end

When(/^I click on the Login link$/) do
  click_button 'Login'
end
