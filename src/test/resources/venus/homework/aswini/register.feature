Feature: Registration feature to become registered User

Scenario Outline: Enter all required information to become registered user without any error message.

  Given User is in registration page
  When user enters registration details as <First Name>, <Last Name>, <Email>,<Password>,<Confirm Password>
  And enter remaining non mandatory details
  And submit the details by clicking on 'Register'
  Then User should see successful registration message
  And User is logged in

  Examples:
  |Gender|First Name|Last Name|Date Of Birth    |Email         |Company Name|NewsLetter|Password|Confirm Password|
  |Male  |ash       |test     |25 November 1987 |abc@gmail.com |  dsfdf     |Checked   |123456  |123456          |
  |Female|twinkle   |test     |11 December 1955 |bita@yahoo.com|tata        |Unchecked |asdfgh  |asdfgh          |


 Scenario Outline: Enter all required information which results into error message.

    Given User is in registration page
    When user enters registration details as <First Name>, <Last Name>, <Email>,<Password>,<Confirm Password>
    And enter remaining non mandatory details
    And submit the details by clicking on 'Register'
    Then User should see successful registration message
    And User is not logged in

 Examples:
    |Gender|First Name|Last Name|Date Of Birth      |Email           |Company Name|NewsLetter|Password|Confirm Password|
    |Male  |ash       |test     |25 November 1987   |                |  dsfdf     |Checked   |123456  |123456          |
    |Female|          |test     |11 December 1955   |bita@yahoo.com  |tata        |Unchecked |asdfgh  |asdfgh          |
    |Male  |teena     |         |01 December 1995   |link@gmail.com  |djfb        |checked   |asd123  |asd123          |
    |Female|Max       |Min      |27 April 2001      |jum@gmail.com   |irhgerh     |checked   |12a     |12a             |
    |Female|God       |Great    |19 September 2000  |god@gmail.com   | dfjbdskjb  |Unchecked |ACB1111 |nbh123          |


#   feature files are better but they are some examples whichare not used can can be removed
#  no need of user user always<class>

#  6/10


