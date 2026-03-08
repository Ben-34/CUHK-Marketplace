Feature: Intelligent Item Search
  As a CUHK student
  I want to search for items using partial keywords or typos
  So that I can find what I need easily

  Scenario: Searching with a partial word
    Given there is an item "Calculus Textbook"
    And there is an item "IKEA Desk"
    When I search for "Calc"
    Then I should see "Calculus Textbook" in the results
    But I should not see "IKEA Desk"