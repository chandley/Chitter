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
    Then I am welcomed as a test user

  Scenario: I sign out
    Given I am logged in as a new user
    When I sign out
    Then I should see a welcome message

  Scenario: I decide to sign in
    Given an anonymous visitor to homepage
    When I click 'sign in'
    Then I am invited to give username and password

  Scenario: I sign in
    Given an anonymous visitor to homepage
    When I give previously registered username and password
    Then I am welcomed as a test user
