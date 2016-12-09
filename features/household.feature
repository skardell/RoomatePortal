Feature: Household information page

  Background:
    Given I am logged into my account

  Scenario: A user visits the household page
    Given I am a member
    When I visit the household page
    Then I should be on the household information page

  Scenario: An admin visits the household page
    When I am the creator of the household
    Then I should be able to edit the household name
    When I visit the household page
    Then I should be on the household information page
    And I can invite more members to the household through the "Invite" button