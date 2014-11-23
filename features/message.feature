Feature: As a registered user
  In order to communicate with my friends
  I should be able to enter and read messages

  Scenario: I enter a message
  As a signed-in user
  When I enter a message
  Then I should see the message on the homepage