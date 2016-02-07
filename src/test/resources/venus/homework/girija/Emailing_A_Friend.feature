Feature: Emailing a friend
  Scenario : Customer should be able to navigate to email a friend window
    Given I am in the product page with a specific product
    When I click a Email friend button
    Then I should see a Email friend page

#    this scnarios is covered in next so duplicated <class>

   Scenario Outline:Customer should allowed to enter details in Email a friend page
     Given I am in Email a friend page to recommend a specific product to friend
     When I enter the "<Friend's email>", "<Your email address>" and "<Personal Message>"
     And I click the send email button
     Then I should see Email a friend page with out errors
     Examples:
     |Friend's email        |Your email address |Personal Message                 |
     |r.rohinkumar@gmail.com|girijas12@gmail.com|This product is really cheap here|

   Scenario Outline:Customer should not allowed to enter a invalid data
     Given I am in Email a friend page to recommend a specific product to friend
     When I enter the "<Friend's email>", "<Your email address>" and "<Personal Message>"
     And I click the send email button
     Then I should see a error message "<error>"
     Examples:
       |Friend's email        |Your email address |Personal Message                 |error|
       |r.rohinkumar@gail.com |girijas12@gmail.com|This product is really cheap here|Please enter a valid Friend's email|

     Scenario Outline:Customer should not allowed to leave a blank data
       Given I am in Email a friend page to recommend a specific product to friend
       When  I didn't enter the "<Friend's email>", "<Your email address>"
       And   I click the send email button
       Then I should see a error message "<error>"
       Examples:
         |Friend's email|Your email address |error|
         |              |                   | Please enter all the fields|

      Scenario Outline: Customer who is not registered should not allowed to Email a friend
        Given I am in Email a friend page to recommend a specific product to friend
        When  I enter the "<Friend's email>", "<Your email address>" and "<Personal Message>"
        And  I click the send email button
        Then I should see a error message "<error>"
        Examples:
          |Friend's email        |Your email address |Personal Message                 |error|
          |r.rohinkumar@gail.com |aradhana@gmail.com|This product is really cheap here |Your email is not registerde|

#        the last one is invlaid scanrios. Over all work is ook but english should be imrpved. 6/10<class>

