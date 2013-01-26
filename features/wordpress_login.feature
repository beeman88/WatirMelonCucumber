Feature: WordPress Login
  As a wordpress user
  I want to enter my username and password
  So that I can login

  Scenario Outline: Login succeeds
    Given I am on the <wordpress> Home Page
    When I enter <username> and <password>
    Then I should see a Sign out menu item
    Scenarios:
      | wordpress          | username  | password                  |
      | www.wordpress.com  | bbbelyk   | )#!]w^xnR\U9C)%oU?df|LaX^ |
 
  Scenario Outline: Login fails
    Given I am on the <wordpress> Home Page
    When I enter <username> and <password>
    Then I should see an error message
    Scenarios:
      | wordpress          | username  | password  |
      | www.wordpress.com  | bbbelyk   | invalid   |
