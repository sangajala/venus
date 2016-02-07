Feature:Registration
  Scenario:User should be able to navigate to Registration page
    Given I am in the home page
    When I click Register link
    Then I should see a Registration page in the window

  Scenario Outline:User should allowed to register
    Given I am in the registration page to fill the entire details
    When I enter the "<First name>","<Last name>","<Email>","<Company name>","<Password>","<Confirm password>"
    And I select the Gender as "male"
    And I check the newsletter
    And I select the Date of birth with Day as "21", Month as "May", Year as "1993"
    And I click the Register button
    Then I should see a registration page with the success message "<success>"
    Examples:
      |First name|Last name | Email             |Company name|Password  |Confirm password|success                           |
      |Girija    |Selvakumar|girijas12@gmail.com|Insoft      |*girija12*|*girija12*      |Registration completed successfuly|

  Scenario Outline:User should allowed to register only by entering the required field
    Given I am in the registration page to fill the required details
    When  I enter the "<First name>","<Last name>","<Email>","<Password>","<Confirm password>"
    And I click the Register button
    Then I should see a Registration page with the success message "<success>"
    Examples:
      |First name|Last name | Email             |Password  |Confirm password|success                           |
      |Girija    |Selvakumar|girijas12@gmail.com|*girija12*|*girija12*      |Registration completed successfuly|

  Scenario Outline:User should not allowed to register without entering any required field
    Given I am in the registration page to fill the details
    When I enter the "<First name>","<Last name>","<Password>","<Confirm password>"
    And I click the register button
    Then I should see a error "<error>"
    Examples:
      |First name|Last name |Password  |Confirm password|error            |
      |Girija    |Selvakumar|*girija12*|*girija12*      |Email is required|

  Scenario Outline:User should not allowed to register with different password and confirm password
    Given I am in the registration page to fill the details
    When I enter the "<First name>","<Last name>","<Email>","<Password>","<Confirm password>"
    And I click the Register button
    Then I should see a error "<error>"
    Examples:
      |First name|Last name | Email             |Password  |Confirm password|error                                      |
      |Girija    |Selvakumar|girijas12@gmail.com|*girija12*|*girija*        |Password and confirm password doesn't match|

  Scenario Outline:User should not allowed to enter a invalid email
   Given I am in the registration page to fill the email field
  When I enter the "<email>"
  Then I should see a error "<error>"
  Examples:
       |Email |error      |
       |girija|Wrong email|

  Scenario Outline:User should allowed to enter less than six characters in password field
    Given I am in the registration page to fill the password field
    When I enter the "<Password>"
    Then I should see a error "<error>"
    Examples:
         |Password|error                                    |
         |Mat     |Password should have atleast 6 characters|


