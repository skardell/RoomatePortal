When(/^I click on the Login link$/) do
  click_on 'Login'
end

Then(/^I should see the login form$/) do
  find(:xpath, '/html/body/h2').should have_content('Log in')
end
