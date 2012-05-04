@test
Feature: Acceptance Testing
  Scenario: Developer can run an acceptance test
    When I run this acceptance test
    Then it should work
    
  @js
  Scenario: Developer can run an acceptance test with JavaScript
    When I run this acceptance test
    Then it should be run using JavaScript