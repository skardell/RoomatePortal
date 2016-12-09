When(/^I visit the Chores page$/) do
  click_on 'Chores'
end

Then(/^I should see the list of Household Chores$/) do
  find(:xpath, '/html/body//h2').should have_content('Chores')
end

Given(/^I am on the Chores page$/) do
  visit '/chores'
end

When(/^I click on the "Create Chore" link$/) do
  click_on 'New Chore'
end

Then(/^I should be on the chore creation page$/) do
  find(:xpath, '/html/body//h1').should have_content('New Chore')
end

Given(/^I am on the chore creation page$/) do
  visit '/chores/new'
end

When(/^I fill in the information forms$/) do
  fill_in 'chore_name', :with => 'CHORE NAME'
  fill_in 'chore_description', :with => 'CHORE DESCRIPTION'
  find('#chore_deadline_1i').find(:xpath, 'option[10]').select_option
end

When(/^I click the "Create" button$/) do
  click_on 'Create'
end

Then(/^I should be on the page detailing the chore I just created$/) do
  find(:xpath, '/html/body//h1').should have_content('CHORE NAME')
end

When(/^I click on the chore's "Cancel" button$/) do
  click_on "Cancel"
end

When(/^I click on an incomplete chore$/) do
  find(:xpath, '/html/body//td[1]/a').click
end

Then(/^I should be on that chore's information page$/) do
  find(:xpath, '/html/body//h1').should have_content('CHORE NAME')
end

Then(/^I can return to the Chores page by clicking the "Back" button$/) do
  click_on 'Back'
end

Given(/^I have an accepted chore$/) do 
  pending
  step 'I am on the chore creation page'
  step 'I fill in the information forms'
  step 'I click the "Create" button'
  step 'I can accept the chore by clicking the "Accept" button'
end

Then(/^I can accept the chore by clicking the "Accept" button$/) do
  pending
  # click_on 'Accept'
end

When(/^I click on an accepted chore$/) do
  find(:xpath, '/html/body//td[1]/a').click
end

Then(/^I can see who accepted the chore$/) do
  # puts page.html
end

When(/^I click on a chore I accepted$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can see that I accepted the chore$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can complete the chore by clicking the "Mark As Complete" button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the "Mark As Complete" button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should return to the Chore page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^My chore should be marked as completed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


When(/^I click on a completed chore$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I can see who completed the chore$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
