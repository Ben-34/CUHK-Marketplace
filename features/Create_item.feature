Feature: Create a New Listing
  As a logged-in CUHK student
  I want to list a second-hand item with a meeting location
  So that buyers know exactly where to pick it up

  Scenario: Successfully listing an item
    Given I am logged in as a "Shaw" college student
    When I go to the "New Item" page
    And I fill in "Title" with "Mini Fridge"
    And I fill in "Price" with "200"
    And I fill in "Meeting Location" with "Shaw College Hostel 2"
    And I click "Create Item"
    Then I should see a success message
    And the item should appear on the marketplace