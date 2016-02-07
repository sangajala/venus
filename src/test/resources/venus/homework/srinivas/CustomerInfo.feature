Feature: Customer Adding Personal Details
Background:
 Given Customer is logged in
  And Should be on Customer account pages
  And  click on Customer info tab

  Scenario Outline: Customer should have access to Add personal details on customer info page
    Given Customer is on My account-customer info page
    When select "<GenderType>" radio button should be highlighted
    And Enter "<First Name>", "<Last Name>", select "<Date of Birth>" from drop down, Enter"<Email>" and "<Company Name>"
    And select check box "<Newsletter>"
    And click Save button
    Then customer should see with all his/her personal details "<Message>"
    Examples:
    |GenderType|First Name|Last Name|Date of Birth|Email              |Company Name|Newsletter|Message|
    | Male     | Simon    | Smith  | 30/01/1980 | insoft@gmail.com  | Insoft       | Tick     |Successfully saved and customer should receive newsletters by email|
    | Female   | Laura    | Carne  | 25/08/1985 | insoft@gmail.com  | Insoft       | Un tick  |Successfully saved and customer should not receive any newsletters|
    |          | Simon    |Smith   |30/01/1980  |insoft@gmail.com   | Insoft       | Tick     |Select gender|
    |Male      |          |Smith   |30/01/1980  |insoft@gmail.com   | Insoft       | Tick     |Required First Name|
    |Male      | Simon    |        |30/01/1980  |insoft@gmail.com   | Insoft       | Tick     |Required Last Name|
    |Male      | Simon    |Smith   |            |insoft@gmail.com   | Insoft       | Tick     |Required valid date of birth|
    |Male      | Simon    |Smith   |30/01/1980  |insoft@gmail       | Insoft       | Tick     |Required Valid Email|

