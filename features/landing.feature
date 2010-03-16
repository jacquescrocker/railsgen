Feature: Landing Page
  In order to introduce someone to RailsGen

  Scenario: View Homepage
    Given I am a new user
    When I visit the homepage
    Then I should see something

  Scenario: Start Now
    Given I am a new user
    When I visit the homepage
      And I click the "Start Now" button
    Then I be redirected to "step 1"

  Scenario: See Stacks (Default Stack)
    Given there is a stack named "Default Stack"
    When I visit the homepage
    Then I should see "Default Stack" within the popular section
      And it should have 3 items in it
      
  Scenario: See Stacks (RSpec Stack)
    Given there is a stack named "RSpec Stack"
    When I visit the homepage
    Then I should see "RSpec Stack" within the popular section
      And it should have 5 items in it

  Scenario: See Stacks (Haml Stack)
    Given there is a stack named "HAML Stack"
    When I visit the homepage
    Then I should see "HAML Stack" within the popular section
      And it should have 5 items in it
  
 
