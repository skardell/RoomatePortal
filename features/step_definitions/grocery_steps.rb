When(/^I am on the Groceries page$/) do
  click_on 'Groceries'
end

Then(/^I should see the groceries lists$/) do
  find(:xpath, '/html/body//h2').should have_content('Groceries')
end

When(/^I click on the "Add Grocery Item" link$/) do
  click_on 'Add Grocery Item'
end

Then(/^I should be on the add grocery item page$/) do
  find(:xpath, '/html/body//h1').should have_content('New Grocery Item')
end

Given(/^I am on the add grocery item page$/) do
  visit '/grocery_items/new'
end

When(/^I fill in the grocery information forms$/) do
  fill_in 'grocery_item_name', :with => 'Cheese'
  fill_in 'grocery_item_amount', :with => '100'
end

When(/^I click the "Add" button$/) do
  click_on 'Create Grocery item'
end

When(/^I click on the "Cancel" button$/) do
  click_on 'Cancel'
end

Then(/^I should return to the Groceries page$/) do
  find(:xpath, '/html/body//h2').should have_content('Groceries')
end

Then(/^I should see my added grocery items$/) do
  # puts page.html
  find(:xpath, 'html/body//tbody/tr/td[1]').should have_content('Cheese')
end

When(/^I click on the X associated with a grocery item$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see the grocery item in the grocery list$/) do
  pending # Write code here that turns the phrase above into concrete actions
end