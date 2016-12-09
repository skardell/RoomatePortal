When(/^I visit the Dashboard page$/) do
  visit '/dashboard'
end

Then(/^I should see my upcoming chores, bills, and groceries$/) do
  find(:xpath, '//*[@id="sidebar"]/li[1]/a').should have_content('Chores')
  find(:xpath, '//*[@id="sidebar"]/li[2]/a').should have_content('Bills')
  find(:xpath, '//*[@id="sidebar"]/li[3]/a').should have_content('Groceries')
  find(:xpath, '//*[@id="sidebar"]/li[4]/a').should have_content('Household')
end