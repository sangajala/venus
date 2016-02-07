Feature: Registration process of http://demo.nopcommerce.com/
  To use http://demo.nopcommerce.com/user must have registered with valid Email and password

  Scenario Outline : Register a new user with valid details
    Given I should be at Registration page of http://demo.nopcommerce.com/
   When I Select Gender
    And I Enter "<First Name>"  "<Last name>"
    And "<Date of Birth>"  and "<Email>"
    And Enter "<Company Details>"
    And  Enter "<Password>" and confirm my password
    And click Register button
    Then I shall get confirmation that Your registration complete
    Examples:
      | Sam| Tim| 01/08/23 | qwerty1@gmail.com | qwerty11 | qwertyy |


#    where are example headers




