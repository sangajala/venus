Feature: Login




 Scenario Outline  User should be able to login with registered email and password


   Given User should be on login page
   When User enters registered "<email>" and "<password>"
   Then User should login and can view Customer Account page


   Examples:

 | Email                |Password    |
 |testlogin@gmail.com   |Abcgsf      |

   #paramters not mathed, no need of user for every line



Scenario Outline  User should not be able to login with invalid email and password


  Given User should be on Login page
  When User enters invalid email and password
  Then user should not be able to login

  Examples:

  |Email               |Password   |
  |testlogin@mail.com   |abcd       |



  Scenario Outline  After checking Remember me box user can login with prefilled password next time


    Given user should be on login page
    When user enters valid Email and Password
    And user  checks  Remember me box
    Then user should login without filling password

#    how do you prove this, the details should be written<class>


    Examples:


    |Remember me|
    |Checked    |
    |Unchecked  |

    Scenario: User should be able to recover the password by clicking on Forgot password


      Given user should be on login page

      When user clicks on forgot password link

      Then user should navigate to the password recovery page and see Your email address box


















