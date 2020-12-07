@api
Feature: Launch a Drupal codebase from GitHub on Lagoon.
  As a web developer
  I need to launch my Drupal codebase on Lagoon
  So that I can evaluate it.

  Scenario: Request a new Drupal codebase and Lagoon Project

    Given I am on the homepage
    Given I am logged in as a user with the "GitHub User" role
    Then I should see "You don't have any Lagoon Projects"
    And I click "Add content"
    Then I fill in "Super Demo" for "Name"
    And I select "Drupal 8 Recommended Project" from "Site Templates"
    And I select "My GitHub Organization" from "GitHub Repo Owner"
    And I fill in "lagoon-test-site" for "GitHub Repo Name"
    And I press "Save"
    Then I should see the success message "Lagoon Project Super Demo has been created. The GitHub repository was created and will be deployed to Lagoon."
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
