Given (/^App is loaded$/) do
end

When(/^I am on the homepage$/) do
  visit "/"
end

Then(/^The title should be "[^"]*"/) do
  expect(page.status_code) == 200
  expect(page).to have_css('head title', :text => "Roommate Connect")
end