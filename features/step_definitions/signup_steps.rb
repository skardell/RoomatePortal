When(/^I click on the Signup link$/) do
  click_on 'Signup'
end

Then(/^I should see the registration form$/) do
  find(:xpath, '/html/body/h2').should have_content('Sign up')
end

