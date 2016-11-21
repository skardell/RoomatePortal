Feature: Bills page features

  Background:
    Given I am signed into my account

  Scenario: A user visits the Bills page
    When I visit the Bills page
    Then I should see the Bills lists

  Scenario: An admin visits the add bill page
    Given I am on the Bills page
    When I click on the "Add Bill" link
    Then I should be on the add bill page

  Scenario: An admin adds a new bill
    Given I am on the add bill page
    When I fill in the bill information forms
    And I click the "Add" button
    Then I should return to the Bills page
    And I should see the new bill

  Scenario: An admin cancels bill addition
    Given I am on the add bill page
    When I click on the "Cancel" button
    Then I should return to the Bills page

  Scenario: An admin edits a bill
    Given I am on the Bills page
    When I click on a "Edit Bill" button for a bill
    Then I should be on the edit page for that bill
    When I click the "Confirm" button
    Then I should return to the bills page
    And I should see the bill was updated

  Scenario: An admin cancels bill editing
    Given I am on the Bills page
    When I click on a "Edit Bill" button for a bill
    Then I should be on the edit page for that bill
    When I click on the "Cancel" button
    Then I should return to the Bills page

  Scenario: An admin deletes a bill
    Given I am on the Bills page
    When I click on a "Edit Bill" button for a bill
    Then I should be on the edit page for that bill
    When I click on the "Delete" button
    And I confirm deletion
    Then I should return to the Bills page
    And I should not see the bill on the Bills page