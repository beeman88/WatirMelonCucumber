Feature: WordPress Login
  As a wordpress user
  I want to enter my username and password
  So that I can login

  Scenario Outline: Login succeeds
    Given I am on the <wordpress> Home Page
    When I enter <username> and <password>
    Then I should see a Sign out menu item
    Scenarios:
      | wordpress | username  | password                  |
      | wordpress | bbbelyk   | uTk9VGenndmrCU^Nar&YU@v9c |
 
  Scenario Outline: Login fails
    Given I am on the <wordpress> Home Page
    When I enter <username> and <password>
    Then I should see an error message
    Scenarios:
      | wordpress | username  | password  |
      | wordpress | invalid   | invalid   |
