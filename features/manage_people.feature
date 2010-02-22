Feature: Manage people
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new person
    Given I am on the new person page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete person
    Given the following people:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd person
    Then I should see the following people:
      |Name|
      |name 1|
      |name 2|
      |name 4|
