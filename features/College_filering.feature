Feature: College-Specific Item Filtering
  As a CUHK student
  I want to filter items by my specific College or view global items
  So that I can easily arrange local pickups or browse the whole university

  Scenario: Viewing items restricted to my own college
    Given there is a college named "New Asia"
    And there is a college named "Shaw"
    And I am logged in as a user from "New Asia"
    And there is an item "Calculus Textbook" listed under "New Asia" that is not global
    And there is an item "Mini Fridge" listed under "Shaw" that is not global
    When I visit the "Local College" marketplace page
    Then I should see "Calculus Textbook"
    But I should not see "Mini Fridge"

  Scenario: Viewing global items from other colleges
    Given I am logged in as a user from "New Asia"
    And there is an item "Desk Lamp" listed under "Shaw" that is marked as global
    When I visit the "Global" marketplace page
    Then I should see "Desk Lamp"