Feature: Purchase Processing

  Scenario Outline: Consumer should be able to fill the Billing details

    Given I am in shopping cart page with atleast 1 item in basket
    When I enter the billing details as "<first>", "<last>" and "<email>"
    And enter remaining as default values
    Then I should see a shipping details screen with out errors
    Examples:

      | first     | last    | email         |
      | rama      | krishna | test@test.com |
      | superstar | krishna | blank         |

  Scenario Outline: Consumer should be not able to fill the Billing details with invalid data

    Given I am in shopping cart page with atleast 1 item in basket
    When I enter the billing details as "<first>", "<last>" and "<email>"
    And enter remaining as default values
    Then I should see an error message "<error>"
    Examples:

      | first     | last    | email         | error                  |
      |           | krishna | test@test.com | Please fill First name |
      | superstar | krishna |               | Please fill email      |
      | superstar |         | test@test.com | Please fill Last name  |