Feature: Login

  Background:
    Given I am on the homepage
    When I click on the Login link
    Then I should see the login form

  Scenario: User logs in successfully
    Given A user with the email "email@email.com" and password "password"
    When I sign in with email "email@email.com" and password "password"
    Then I should be on my household dashboard

  Scenario: User logs in with an incorrect email
    Given A user with the email "email@email.com" and password "password"
    When I sign in with email "notmyemail@email.com" and password "password"
    Then I should remain on the login page
    And I should see a flash message indicating incorrect email or password

  Scenario: User logs in with an incorrect password
    Given A user with the email "email@email.com" and password "password"
    When I sign in with email "email@email.com" and password "notmypassword"
    Then I should remain on the login page
    And I should see a flash message indicating incorrect email or password