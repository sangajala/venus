Feature:Customer Register in demo.nopCommerce

  Scenario: Customer open Registration page
    Given I am navigative to the demo.nopCommerce Register page
    When I click on "male" Button
    And I enter "sudhakar" and "kayyala"
    When I am select Date of Birth "05" and "march"and "1999"
    And I enter "sudhakar@gmail.com"
    When I am enter "SKRLONDON" and ""london1478" and "london1478"
    Then I click on "REGISTER" Button

  Scenario: Customer open Registration page
    Given I am navigative to the demo.nopCommerce Register page
    When I click on "female" Button
    And I enter "keran" and "lutos"
    When I am select Date of Birth "09" and "july"and "1989"
    And I enter "keranlutos@gmail.com"
    When I am enter "keran" and ""lutos1478" and "lutos1478"
    Then I click on "REGISTER" Button

  Scenario Outline: Customer open Registration page
    Given I am navigative to the demo.nopCommerce Register page
    When I click on "<Gender>" Button
    And I enter "<Firstname>" and "<Lastname>"
    When I am select Date of Birth "<Day>" and "<Month>"and "<Year>"
    And I enter "<Email>"
    When I am enter "<Companyname>" and ""<Password>" and "<Confirmpassword>"
    Then I click on REGISTER Button
    Examples:
      | Firstname | Lastname | Day | Month | Year | Email                | Companyname | Password   | Confirmpassword |
      | sudhakar  | kayyala  | 05  | march | 1999 | sudhakar@gmail.com   | KSRLONDON   | london1478 | london1478      |
      | keran     | lutos    | 09  | july  | 1989 | keranlutos@gmail.com | keran       | lutos1478  | lutos1478       |

  Scenario Outline: Customer open Registration page
    Given I am navigative to the demo.nopCommerce Register page
    When I click on "<Gender>" Button
    And I enter "<Firstname>" and "<Lastname>"
    When I am select Date of Birth "<Day>" and "<Month>"and "<Year>"
    And I enter "<Email>"
    When I am enter "<Companyname>" and ""<Password>" and "<Confirmpassword>"
    Then I click on REGISTER Button
    Examples:
      | Gender | Firstname | Lastname | Day | Month | Year | Email                | Companyname | Password   | Confirmpassword |
      | male   | sudhakar  | kayyala  | 05  | march | 1999 | sudhakar@gmail.com   | KSRLONDON   | london1478 | london1478      |
      | female | keran     | lutos    | 09  | july  | 1989 | keranlutos@gmail.com | keran       | lutos1478  | lutos1478       |

  Scenario Outline: Customer should  not fill the  Registration page with invalid data
    Given I am navigative to the demo.nopCommerce Register page
    When I click on "<Gender>" Button
    And I enter "<Firstname>" and "<Lastname>"
    When I am select Date of Birth "<Day>" and "<Month>"and "<Year>"
    And I enter "<Email>"
    When I am enter "<Companyname>" and ""<Password>" and "<Confirmpassword>"
    Then I click on REGISTER Button
    Then I should see the "<Error>" message
    Examples:
      | Gender | Firstname | Lastname | Day | Month | Year | Email              | Companyname | Password   | Confirmpassword | Error                  |
      | male   |           | kayyala  | 05  | march | 1999 | sudhakar@gmail.com | KSRLONDON   | london1478 | london1478      | First name is required |
      | female | keran     | lutos    | 09  | july  | 1989 |                    | keran       | lutos1478  | lutos1478       | email is required      |


    # they are like test cases. they are in too much of detail. others ok 7/10