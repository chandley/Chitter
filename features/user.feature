Feature: My Twitter Clone
  In order to keep in touch with my friends
  As a shy person who does not like speaking
  I want to see their messages posted on the site

  Scenario: I look at homepage
    Given an anonymous visitor
    When I visit the homepage
    Then I should see a welcome message

  Scenario: I decide to sign up
    Given an anonymous visitor to homepage
    When I click 'sign up'
    Then I am invited to give details

  Scenario: I sign up
    Given I am on the signup page
    When I enter my details
    Then I am logged in as a new user

  Scenario: I see messages on homepage
    Given an anonymous visitor
    When I visit the homepage
    And a message has been posted   
    Then I should see at least one message