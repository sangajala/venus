
  Feature: Customer Addresses Page

    Background: User On Login Page select MyAccount
      And select Customer Addresses

     Scenario Outline: Customer should be able to add details for Billing Address
       Given I am on a Customer Address Page
       When  I press Add Billing Address,I should see a New Address Book Entry details screen
       And   I enter the Address details as "<First>", "<Last>","<Email>","<FaxNumber>","<Company>","<Address>","<Address2>","<City>"
       And   Select Country and State "<Contry>", "<State>"
       And   Enter Postal Code as "<Code>"
       And   Press Add Address
       Then  I should be able to see a message "<Message>"
       And   I should be able to see a Billing Address in Customer Address

       Examples:
      |First| Last  | Email           | FaxNumber | Company | Address  | Address2 | City      |  Contry | State        | Code   |Message|
      |John | Smith | jsmith@gmail.com| 123456    | Smith   | SmithRoad|Smithroad2|helloworld | Alabama | United State | 3456778|Customer should be see a Billing Address|
      |Smith|       |                 | 345677    | John    |          |Smithroad2|           | Alabama | United State |        | * Symbol, Mandatory Field              |

    Scenario: Customer should be able to Edit Address
      Given I am on Customer Billing Address Page
      When  I select Edit
      And   I update details
      And   press on Update Address
      Then  I should be able to see Updated Billing Address
#where is example
    Scenario: Customer should be able to Delete Address
      Given I am on Customer Billing Address Page
      When  I press Delete
      Then  I should not be able to see Billing Address in Addresses

#      6/10
