Given(/^I am logged into my account$/) do
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user)
  visit '/dashboard'
end

Given (/^I am logged out$/) do
  logout(:user)
end

When(/^I visit the Account page$/) do
  click_on 'Account'
end

Then(/^I should see my account information$/) do
  find(:xpath, '/html/body//h2').should have_content('Edit User')
end

When(/^I am on my Account page$/) do
  visit '/users/edit'
end  


When(/^I edit my account information$/) do
  fill_in 'user_email', :with => 'changed@email.com'
  fill_in 'user_password', :with => 'password'
  fill_in 'user_password_confirmation', :with => 'password'
  fill_in 'user_current_password', :with => 'password'
end

When(/^I press the "Confirm" button$/) do
  click_on 'Update'
end

Then(/^I should see my updated account information$/) do
  step 'I am on my Account page'
  expect(find('#user_email').value).to eq 'changed@email.com'
end
