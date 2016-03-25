Feature: User should be able to access their account and save his activities

#  sample+++

  @1
  Scenario Outline: User should be able to fill Registration Details

    Given I am on a Registration Page blah
    When  I enter the personal details as "<First_Name>", "<Last_Name>","<email>" and "<Company_Name>"
    And   An active Newsletter "<Active>"
    And   Enter password as "<Password>" and "<ConfirmPassword>"
    And   press Register
    Then  I should be able to see a message "<Message>"

    Examples:

      | First_Name | Last_Name | email                 | Company_Name | Active | Password | ConfirmPassword | Message                      |
      | Varsha     | Tailor    | tailorvc@gmail.com    | Divine       | Active | xyz123   | xyz123          | Your registration completed  |
      | Vanessa    | Tailor    | tailorvc.uk@gmail.com | DivineGrace  | Non    | xyz_12   | xyz_23          | Your Registration Completed  |
#      | Vanessa    |           | tailorvc.uk@gmail.com | DivineGrace  | Active | xyz_12   | xyz_23          | Please Enter Lastname        |
#      |            | Tailor    | tailorvc.uk@gmail.com | DivineGrace  | Non    | xyz_12   | xyz_23          | Please Enter Firstname       |
#      | Vanessa    | Tailor    | tailorvcgmail.com     | DivineGrace  | Active | xyz_12   | xyz_23          | Please Enter Valid Email     |
#      | Vanessa    | Tailor    |                       | DivineGrace  | Non    | xyz_12   | xyz_23          | Valid Email required         |
#      | Vanessa    | Tailor    | tailorvc.uk@gmail.com | DivineGrace  | Active | xyz_12   | xy23            | Entered Password not match   |
#      | Vanessa    |           |                       | DivineGrace  | Non    | xyz_12   | xyz_12          | Lastname & Email is required |


#  Scenario: User should be logged in successfully
#
#    Given consumer has an account
#    When he tries to login to his account
#    Then should be able to login successfully
#    And his name should be see the first name
#
#
#  Scenario Outline: User should be able to fill Log in credentials
#
#    Given I am on a Login Page
#    When  I enter details as "<Email>" and "<Password>"
#    And   An active Remember me "<RememberMe>"
#    And   press Login
#    Then  I should be able to see a message "<Message>"
#
#    Examples:
#
#      | Email                 | Password | RememberMe | Message                                                                          |
#      | tailorvc@gmail.com    | xyz123   | active     | Customer Account Page Display. And Remember Login details when user log in again |
#      | tailorvc.uk@gmail.com | xyz123   | Non-active | Customer Account Page Display                                                    |
#      | tailorvc@gmail.com    |          | Non-active | Mandatory Field "*" symbol display                                               |
#      | tailorvc              | xyz123   | Non-active | Your login attempt was not successful. Please try again.                         |
#      |                       |          |            | * symbol display                                                                 |




