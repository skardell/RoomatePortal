Feature: Groceries page features

  Background:
    Given I am signed into my account

  Scenario: A user visits the Groceries page
    When I am on the Groceries page
    Then I should see the groceries lists

  Scenario: A user visits the add grocery item page
    When I am on the Groceries page
    Then I should see the groceries lists
    When I click on the "Add Grocery Item" link
    Then I should be on the add grocery item page

  Scenario: A user adds a grocery item
    Given I am on the add grocery item page
    When I fill in the grocery information forms
    And I click the "Add" button
    Then I should return to the Groceries page
    And I should see my added grocery items

  Scenario: A user cancels grocery item addition
    Given I am on the add grocery item page
    When I click on the "Cancel" button
    Then I should return to the Groceries page

  Scenario: A user removes a grocery item
    Given I am on the Groceries page
    When I click on the X associated with a grocery item
    Then I should not see the grocery item in the grocery list