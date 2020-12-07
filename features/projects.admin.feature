@api
Feature: Configure demo user experience
  As a adminstrator user
  I need to configure the default values for fields that users cannot edit
  So that demo users get a simplified experience

  Scenario: Configure default values for new Lagoon Project nodes.
    When I am logged in as a user with the "administrator user" role
    And I am at "admin/structure/types/manage/lagoon_project/fields"
    Then I should see "Lagoon API URL"
    When I click "Edit" in the "Lagoon API URL" row
    And I fill in "Lagoon API URL" with "http://localhost:999"
    Then I press "Save settings"

    When I am logged in as a user with the "authenticated" role
    And I am at "node/add/lagoon-project"
    And I should not see "Lagoon API URL"
    And I should not see "http://localhost:999"
    And I fill in "Name" with "New Cluster Project"
    When I press "Save"
    Then I should see the success message "Lagoon Project New Cluster Project has been created."
