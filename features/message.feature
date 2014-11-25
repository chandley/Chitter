Feature: As a registered user
  In order to communicate with my friends
  I should be able to enter and read messages

  Scenario: I decide to enter a message
    Given I am logged in as a new user
    When I visit the homepage
    Then I am invited to enter a message

  Scenario: I enter a message
    Given I am logged in as a new user
    When I enter a message
    Then I see the test message on the homepage