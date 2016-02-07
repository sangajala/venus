Feature: Customer Addresses Add/Edit/Delete
  Background:
  Given Customer is logged in
    And Should be on Customer account pages
    And  Click on Addresses tab
Scenario Outline: Customer should have access to Add Address details from My account page
  Given Customer is on My account-Addresses page
  When click Add button
  Then opens Add new Address window page
  And Enter "<First Name>","<Last Name>","<Email>", "<country>" from drop down box, "<city>", "<Address 1>", "<Zip/postal code>" and "<Phone number>"
  And click save button
  Then Address should save successfully "<Message>"
  When customer click on address page
  Then New Address must be displayed on Address page
  Examples:
    | First Name | Last Name | Email | country |  city | Address 1 | Zip/postal code | Phone number | Message |

    |Rose       | Bilclif    |insoft@gmail.com|United states|New York|21-High street|NY10|444555666  |Address saved successfuly|
    |           | Bilclif    |insoft@gmail.com|United states|New York|21-High street|NY10|444555666  |Required first name|
    |Rose       | Bilclif    |                |United states|New York|21-High street|NY10|444555666  |Required Valid Email|
    |Rose       | Bilclif    |insoft@gmail.com|             |New York|21-High street|NY10|444555666  |Select Country|
    |Rose       | Bilclif    |insoft@gmail.com|United states|New York|21-High street|    |444555666  |Required Zip/postal code|
    |Rose       | Bilclif    |insoft@gmail.com|United states|New York|21-High street|NY10|           |Required valid phone Number|
    |Rose       | Bilclif    |insoft@gmail.com|United states|        |21-High street|NY10|444555666  |Required city|

  Scenario : Customer should have access to Edit Address details from My account page
    Given Customer is on My account-Addresses page
    When click Edit button
    Then opens Address window page
    And change first name"<Rahul>"
    And click save button
    Then customer should see message "<successfully saved>"
    And Addresses page must be updated with latest changes

  Scenario : Customer should have access to Delete Address details from My account page
    Given Customer is on My account-Addresses page
    When click Delete button
    Then customer should see message "<Address successfully deleted>"
    When customer click on addresses page
    Then Addresses page must be blank



    #they all look like test cases and not BDD files. Clisk should not be shown <class>  6/10



