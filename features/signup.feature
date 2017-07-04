Feature: Sign up as a new user to the android app

  Scenario: Signing up as a new user
    Given I am on the homescreen of the app
    When I complete the sign up of as a new user
    Then I should see the main page
