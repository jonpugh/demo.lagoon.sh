@api
Feature: Get a Demo Project on Lagoon
  As a anonymous user
  I need to get access to a demo instance of Lagoon
  So that I can evaluate it.

  Scenario: Request a Demo Project

    Given users:
      | name     | mail          | roles        |
      | testuser | test@test.com |              |
    Given I am on the homepage
    Then I should see "Lagoon Demo Factory"
    When I am logged in as a user with the "authenticated user" role
    And I am on the homepage
    Then I should see "You don't have any Lagoon Projects"
    And I click "Add content"
    Then I fill in "Super Demo" for "Name"
    And I press "Save"
    Then I should see the success message "Lagoon Project Super Demo has been created. Check your email for access information."
    Then I should see the lagoon "project" "Super Demo" in the Lagoon API
    Then I should see the lagoon "user" "testuser" in the Lagoon API
    Then I should see the lagoon environment "default" in the "Super Demo" project in the Lagoon API
    When I am on the homepage
    Then I should see "My Lagoon Projects"
    And I should see the link "Super Demo"
    And I should see "Your project is being created. Check back here momentarily."
    Then I wait for an email
    When I reload the page
    Then I click "Sign in"
    Then I should see "Lagoon UI"
