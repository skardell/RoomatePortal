Feature: Dashboard

  Background:
    Given I am logged into my account

  Scenario: A user visits the dashboard
    When I visit the Dashboard page
    Then I should see my upcoming chores, bills, and groceries