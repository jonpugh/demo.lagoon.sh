@api
Feature: Get a Demo Project on Lagoon
  As a anonymous user
  I need to get access to a demo instance of Lagoon
  So that I can evaluate it.

  Scenario: Request a Demo Project

    Given I am on the homepage
    Then I should see "Welcome to Lagoon Demo Factory"
