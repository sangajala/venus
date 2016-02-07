
  Feature: Register a new User

    Background: Select Register either on Home page or on Login Page
      And On Registration Page

   Scenario Outline : User should be able to fill Registration Details

     Given I am on a Registration Page
     When  I enter the personal details as "<First_Name>", "<Last_Name>","<email>" and "<Company_Name>"
     And   An active Newsletter "<Active>"
     And   Enter password as "<Password>" and "<ConfirmPassword>"
     And   press Register
     Then  I should be able to see a message "<Message>"

     Examples:

   | First_Name | Last_Name  | email               | Company_Name | Active   | Password | ConfirmPassword | Message                    |
   |  Varsha     | Tailor    |tailorvc@gmail.com   | Divine       |  Active  |xyz123    | xyz123          | Your Registration Completed|
   |  Vanessa    | Tailor    |tailorvc.uk@gmail.com| DivineGrace  |  Non     | xyz_12   | xyz_23          | Your Registration Completed|
   |  Vanessa    |           |tailorvc.uk@gmail.com| DivineGrace  |  Active  | xyz_12   | xyz_23          | Please Enter Lastname      |
   |             | Tailor    |tailorvc.uk@gmail.com| DivineGrace  |  Non     | xyz_12   | xyz_23          | Please Enter Firstname     |
   |  Vanessa    | Tailor    |tailorvcgmail.com    | DivineGrace  |  Active  | xyz_12   | xyz_23          | Please Enter Valid Email   |
   |  Vanessa    | Tailor    |                     | DivineGrace  |  Non     | xyz_12   | xyz_23          | Valid Email required       |
   |  Vanessa    | Tailor    |tailorvc.uk@gmail.com| DivineGrace  |  Active  | xyz_12   | xy23            | Entered Password not match |
   |  Vanessa    |           |                     | DivineGrace  |  Non     | xyz_12   | xyz_12          | Lastname & Email is required|
