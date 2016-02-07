Feature: Emailing a Friend

  Scenario: Customer should able to send an e-mail to a friend for a specific product

    Given Customer is in the product page with the selected product
    When  Customer clicks on the Email a friend button
    Then  Customer should able to see the Email a friend window displayed with the product information

  Scenario: Customer should able to send an e-mail to a friend for a specific product

    Given Customer is in the product page with the selected product
    When  Customer clicks on the Email a friend button
    Then  Customer should able to send an e-mail with the product information

  Scenario: Customer should able to send an e-mail to a friend for a specific product with valid data

    Given Customer is in the product page with the selected product
    And clicks on the Email a friend button
    When  Customer enters "gopu@yahoo.com","sri@yahoo.com","Hai have a look at this product"
    Then  Customer should able to send an e-mail with the product information

  Scenario Outline: Customer should able to send an e-mail to a friend for a specific product with valid data

    Given Customer is in the product page with the selected product
    And clicks on the Email a friend button
    When  Customer enters "<Friend's email>","<Your email address>","<Personal message>"
    Then  Customer should able to see the error message

  Examples:

  |Friend's email|Your email address|Personal message|
  |insoft@yahoo.com          |srigopu@yahoo.com     |Hai look at this product|
  |gopu@yahoo.com|insoft@gmail.com              |Hai look at this product|

  Scenario Outline: Customer should able to send an e-mail to a friend for a specific product with invalid data

    Given Customer is in the product page with the selected product
    And clicks on the Email a friend button
    When  Customer enters "<Friend's email>","<Your email address>","<Personal message>"
    Then  Customer should able to see the error message

    Examples:

    |Friend's email|Your email address|Personal message|Error Messge|
    |gopu          |sri@yahoo.com     |Hai look at this product|Please enter your friend vaild e-mail address|
    |gopu@yahoo.com|sri               |Hai look at this product|Please enter your valid e-mail address       |

#    no need of customer in every line
#  clicks shuld not be shown - Error message is not parametersised. 6/10