When(/^I click on the Login link$/) do
  click_on 'Login'
end

Then(/^I should see the login form$/) do
  find(:xpath, '/html/body//h1').should have_content('Log In')
end

Given(/^A user with the email "email@email.com" and password "password"$/) do
  user = FactoryGirl.create(:user)
  user.save
end

Then(/^I should be on my household dashboard$/) do
  visit "dashboard"
end  

When /^I sign in with email "(.*?)" and password "(.*?)"$/ do |email, password|
  fill_in 'user_email', :with => email
  fill_in 'user_password', :with => password
  click_on 'Log in'
end

Then(/^I should remain on the login page$/) do
  visit "/"
end  

And(/^I should see a flash message indicating incorrect email or password$/) do
  
end

