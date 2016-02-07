
Feature: Login

  Background:Select Login on Home Page
    And On Login Page

  Scenario Outline : User should be able to fill Log in credentials

    Given I am on a Login Page
    When  I enter details as "<Email>" and "<Password>"
    And   An active Remember me "<RememberMe>"
    And   press Login
    Then  I should be able to see a message "<Message>"

    Examples:

  |Email                | Password   | RememberMe      |  Message                       |
  |tailorvc@gmail.com   | xyz123     |   active        | Customer Account Page Display. And Remember Login details when user log in again |
  |tailorvc.uk@gmail.com| xyz123     |   Non-active    | Customer Account Page Display |
  |tailorvc@gmail.com   |            |   Non-active    | Mandatory Field "*" symbol display|
  |tailorvc             | xyz123     |   Non-active    | Your login attempt was not successful. Please try again.|
  |                     |            |                 | * symbol display                                         |

  Scenario Outline : Forgot Password and Username

    Given I am on a login page
    When  I press on Forgot password and Username
    Then  I can navigate to "Reset your password page"
    And   I enter "<Email>"
    And   Press on Recover
    Then  I should get a message "<Message>"

    Examples:
    | Email                   | Message |
    |tailorvc.uk@gmail.com    | Email with instructions has been sent to you |
    |tailorvc.ukgmail.com     | Wrong Email format |
    |                         | Mandatory '*' symbol is displayed|