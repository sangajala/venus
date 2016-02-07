Feature: User login to the demo.nopCommerce

  Scenario:Customer should able to Login Page
    Given I am on navigate to the demo.nopCommerce Login Page
    When I enter the "Sriram@gmail.com" and "sriram123"
    And I click on to the LOGIN Button
    Then I should able to Logedin Successfuly

  Scenario:Customer should able to Login Page

    Given I am on navigate to the demo.nopCommerce Login Page
    When I enter the "Sudhakar@gmail.com" and "sudhakar123"
    And I click on to the LOGIN Button
    Then I should able to Logedin Successfuly

  Scenario Outline:Customer should able to Login Page
    Given I am on navigate to the demo.nopCommerce Login Page
    When I enter the "<Email>" and "<Password>"
    And I click on to the LOGIN Button
    Then I should able to Logedin Successfuly
    Examples:
      | Username           | Password    |
      | Sriram@gmail.com   | sriram123   |
      | Sudhakar@gmail.com | sudhakar123 |

  Scenario Outline: Customer should not Logedin with invalid data
    When I enter the "<Email>" and "<Password>"
    And I click on to the LOGIN Button
    Then I should able to Logedin <"Unsuccessfully">
    Examples:
      | Email            | Password  | Unsuccessfully            |
      | Ssssss@gmail.com | sriram123 | Login was unsuccessful    |
      |                  | 111222    | No customer account found |
