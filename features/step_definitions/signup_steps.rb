When(/^I click on the Signup link$/) do
  click_on 'Signup'
end

Then(/^I should see the registration form$/) do
  #find(:xpath, '/html/body/h2').should have_content('Sign up')
end

When(/^I fill in the registration form$/) do
  fill_in 'user_email', :with => 'email@email.com'
  fill_in 'user_password', :with => 'password'
  fill_in 'user_password_confirmation', :with => 'password'
  fill_in 'user_household_name', :with => 'houehold'
  # fill_in 'user_code', :with => 'password'
end

When(/^I press the "Create Account" button$/) do
  click_on 'Sign up'
end

Then(/^I should see a flash message indicating success$/) do
  
end

When(/^I fill in the registration form with existing information$/) do
  fill_in 'user_email', :with => 'email@email.com'
  fill_in 'user_password', :with => 'password'
  fill_in 'user_password_confirmation', :with => 'password'
  fill_in 'user_household_name', :with => 'houehold'
end

Then(/^I should see a flash message indicating failure$/) do
  
end
