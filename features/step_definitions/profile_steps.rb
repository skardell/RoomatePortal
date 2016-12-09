Given(/^I am logged into my account$/) do
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user)
  visit '/dashboard'
end

Given(/^I am logged in as a second user$/) do
  user = FactoryGirl.create(:user2)
  login_as(user2, :scope => :user)
  visit '/dashboard'
end

Given (/^I am logged out$/) do
  logout(:user)
end

When(/^I visit the Account page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see my account information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I am on my Account page$/) do
  
end  


When(/^I edit my account information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press the "Confirm" button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see my updated account information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
