Feature: User Login
  Scenario Outline: User should be able to login with valid user name and password
    Given User is on login page
    When User enters Username as <username>, Password as <password>
    And click login button
    Then user should be logged in

    Examples:
    |username|password|
    |AtalBP  |pswd    |
    |bangari |abcd    |


#    The terminology is not good. We shoud not see click at all

#  5/10
