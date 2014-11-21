Feature: My Twitter Clone
  In order to keep in touch with my friends
  As a shy person who does not like speaking
  I want to see their messages posted on the site

  Scenario: look at homepage
    Given an anonymous visitor
    When I visit the homepage
    Then I should see a welcome message

  Scenario: see messages on homepage
    Given an anonymous visitor
    And a message has been posted
    When I visit the homepage
    Then I should see at least one message