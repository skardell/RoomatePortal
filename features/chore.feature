Feature: Chore page features

  Background:
    Given I am logged into my account

  Scenario: A user visits the Chores page
    When I visit the Chores page
    Then I should see the list of Household Chores

  Scenario: A user visits the chore creation page
    Given I am on the Chores page
    When I click on the "Create Chore" link
    Then I should be on the chore creation page

  Scenario: A user creates a chore
    Given I am on the chore creation page
    When I fill in the information forms
    And I click the "Create" button
    Then I should be on the page detailing the chore I just created

  Scenario: A user cancels chore creation
    Given I am on the chore creation page
    When I click on the chore's "Cancel" button
    Then I should see the list of Household Chores

  Scenario: A user views an incomplete chore
    Given I am on the chore creation page
    When I fill in the information forms
    And I click the "Create" button
    Then I should be on that chore's information page
    # And I can return to the Chores page by clicking the "Back" button
    And I can accept the chore by clicking the "Accept" button

  Scenario: A user views a chore accepted by another user
    Given I am on the Chores page
    When I click on an accepted chore
    Then I should be on that chore's information page
    And I can see who accepted the chore
    And I can return to the Chores page by clicking the "Back" button

  Scenario: A user views a chore they accepted
    Given I am on the Chores page
    When I click on a chore I accepted
    Then I should be on that chore's information page
    And I can see that I accepted the chore
    And I can return to the Chores page by clicking the "Back" button
    And I can complete the chore by clicking the "Mark As Complete" button

  Scenario: A user completes an accepted chore
    Given I am on the Chores page
    When I click on a chore I accepted
    Then I should be on that chore's information page
    When I click the "Mark As Complete" button
    Then I should return to the Chore page
    And My chore should be marked as completed

  Scenario: A user views a completed chore
    Given I am on the Chores page
    When I click on a completed chore
    Then I should be on that chore's information page
    And I can see who completed the chore
    And I can return to the Chores page by clicking the "Back" button




