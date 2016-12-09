Feature: Account information features

  Background:
    Given I am logged into my account

  Scenario: A user visits their account information page
    When I visit the Account page
    Then I should see my account information

  Scenario: A user edits their account information
    When I am on my Account page
    Then I should see my account information
    When I edit my account information
    And I press the "Confirm" button
    Then I should see my updated account information
    And I should see a successful message flash