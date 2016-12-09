When(/^I visit the Bills page$/) do
  click_on 'Bills'
end

Then(/^I should see the Bills lists$/) do
  find(:xpath, '/html/body//h2').should have_content('Bills')
end

Given(/^I am on the Bills page$/) do
  visit '/bills'
end

When(/^I click on the "Add Bill" link$/) do
  pending # Error in website on add bill with only one user
  click_on 'Add Bill'
end

Then(/^I should be on the add bill page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on the add bill page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in the bill information forms$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should return to the Bills page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the new bill$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on a "Edit Bill" button for a bill$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on the edit page for that bill$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the "Confirm" button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should return to the bills page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the bill was updated$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the "Delete" button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I confirm deletion$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see the bill on the Bills page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end