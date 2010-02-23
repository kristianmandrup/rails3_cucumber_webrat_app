Feature: Manage posts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new post
    Given I am on the new post page
    When I fill in "Title" with "title 1"
    And I press "Create"
    Then I should see "title 1" on the posts page

