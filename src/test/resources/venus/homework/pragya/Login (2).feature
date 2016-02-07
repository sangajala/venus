Feature : login http://demo.nopcommerce.com/
  I should enter valid Email and password
  Scenario : User should be able to login
    Given I am on login page http://demo.nopcommerce.com/
    When I enter "<Email>" and "<Password>"
    And Click login button
    Then I should be able login succesfully


  Scenario Outline : User should be able to login
    Given I am on login page http://demo.nopcommerce.com/
    When I enter "<Email>" and "<Password>"
    And Click login button
    Then I should be able login successfully
    Examples:
      | qwerty1@gmail.com | qwerty |





