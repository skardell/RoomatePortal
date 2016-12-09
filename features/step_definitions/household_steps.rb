Given(/^I am a member$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I visit the household page$/) do
  click_on 'Household'
end

Then(/^I should be on the household information page$/) do
  find(:xpath, '/html/body//h1').should have_content('testHousehold')
end

When(/^I am the creator of the household$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to edit the household name$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can invite more members to the household through the "Invite" button$/) do
  click_on 'Invite Member'
  find(:xpath, '/html/body//h1').should have_content('Invite a Roommate!')
end