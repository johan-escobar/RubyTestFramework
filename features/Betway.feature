Feature: Login functions

  Scenario: a user logs in using a uk account
    Given I navigate to Betway
    When i submite the login form
    Then I check that I am in the lobby