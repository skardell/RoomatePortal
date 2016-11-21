Feature: Homepage
  Scenario: View the apps homepage
    Given App is loaded
    When I am on the homepage
    Then The title should be "Roommate Connect"
