When(/^I click on the Login link$/) do
  click_on 'Login'
end

Then(/^I should see the login form$/) do
  find(:xpath, '/html/body/h2').should have_content('Log in')
end

Given(/^A user with the email "email@email.com" and password "password"$/) do
  user = FactoryGirl.create(:user)
  user.save
end

When(/^I sign in with email "email@email.com" and password "password"$/) do
  fill_in 'user_email', :with => 'email@email.com'
  fill_in 'user_password', :with => 'password'
  click_on 'Log in'
end

When(/^I sign in with email "notmyemail@email.com" and password "password"$/) do
  fill_in 'user_email', :with => 'notmyemail@email.com'
  fill_in 'user_password', :with => 'password'
  click_on 'Log in'
end

When(/^I sign in with email "email@email.com" and password "notmypassword"$/) do
  fill_in 'user_email', :with => 'email@email.com'
  fill_in 'user_password', :with => 'notmypassword'
  click_on 'Log in'
end