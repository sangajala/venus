Feature: Registration


  Scenario: user should be able to register

    Given user should be on register page

    When user put all required details"<Gender>" "<First>" "<Last Name>" " <Date of birth>" "<Email>" "<Password>" "<Confirm password>

    Then user should be able to register


    Example:

  | Gender        | first     | last      | Date of birth  | email          | Company  name| Password| Confirm passowrd|
  |male           | Paul      | Will      |04/12/1982      | paul@gmail.com |Globalzin     | Abcgsf  | Abcgsf  I       |
  |Female         |           |           |                |                 |             |abc      | abc             |


Scenario: Successful Registration
New users should get a confirmation email 

Given user has chosen to register
When user gets registered with valid details
Then User should receive a confirmation email
