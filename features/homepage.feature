Feature: Homepage

  Scenario: View the apps homepage
    Given I am logged out
    And App is loaded
    When I am on the homepage
    Then The title should be "Roommate Connect"
    # Then I should see it
