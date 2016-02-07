Feature: Login feature


  Scenario Outline: User can login without any error

    Given User is in Login page
    When user enters login details
    And Clicks "Login"
    Then User should be able to login successfully

    Examples:
    |Email         |Password   |Remember Me|
    |abc@gmail.com |asdfgh     |unchecked  |
    |test@gmail.com|dfbdjbvjbd |checked    |


  Scenario Outline: User unable to login with invalid details

    Given User is in Login page
    When user enters login details for user
    And Clicks "Login"
    Then User should not be able to login successfully

    Examples:
      |Email         |Password   |Remember Me|
      |              |asdfgh     |unchecked  |
      |test@gmail.com|           |checked    |



  Scenario: Unregistered User unable to login

    Given User is in Login page
    When User enters Email id for unregistered user as "test@gmail.com"
    And enters password as "asdffg"
    And Clicks "Login"
    Then User should not be able to login successfully



