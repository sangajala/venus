Feature: Shopping Cart

  As a Shopper
  I want to put my items in the shopping cart
  Because I want to manage items before I checkout

  Scenario Outline: User should be able to add items in the shopping cart

    Given I am a logged in user with item selected in Product detail page
    When  I enter the number of items as "<quantity>"
    And   I click Add to cart button
    And   I click Shopping cart link
    Then  The quantity in my shopping cart icon should be updated with "<quantity>" specified
    And   I Should see items added in the shopping cart page without any errors


    Examples:

    |quantity|
    |   1    |
    |   3    |


  Scenario Outline: User Should not be able to add items in the shopping cart with invalid data

    Given I am a logged in user with product selected in Product detail page
    When  I enter the number of items as "<quantity>"
    And   I click Add to cart button
    Then  The quantity in my shopping cart should not be updated with "<quantity>" specified
    And   I Should see a error message <error>

    Examples:

    |quantity | error                         |
    |    0    | Quantity should be positive   |
    |   -1    | Quantity should be positive   |
    |         | Quantity should be positive   |


Scenario Outline: User should be able to update the items in Shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter number of items as "<quantity>"
  And   I click Update Shopping cart option
  Then  I should see the Items updated successfully in shopping cart page

  Examples:

  |quantity|
  | 2      |
  | 10     |

Scenario : User should be able to update the items in Shopping cart page with number of items as 0

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter the number of items as 0
  And   I select Update Shopping cart option
  Then  The Item should be removed successfully from shopping cart page
  And   I should see the shopping cart page as empty

  Scenario : User should be able to remove and update the items in Shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I select remove checkbox option for the added item
  And   I select Update Shopping cart option
  Then  I should see the Item removed from shopping cart page


  Scenario: User should be able to fill and apply  Discount code in shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter the valid Discount code
  And   I select Apply coupon option
  Then  I should see coupon code applied  with discount amount displayed in sub Total

Scenario : User should not be able to apply the already used Discount code of an item in the shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter the already applied Discount code for an item
  And   I select Apply coupon option
  Then  I should not see the coupon code applied
  And   I should see a error message "Coupon code already applied"

Scenario : User should not be able to apply the invalid or expired Discount code for an item in the shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter an invalid  Discount code for an item
  And   I select Apply coupon option
  Then  I should not see the coupon code applied
  And   I should see a error message "The Coupon code you entered couldn't be applied to your order"

#  good scnarios <class>

Scenario: User should be able to fill and add Gift card code in shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter the valid gift card code
  And   I select Add gift card option
  Then  I should see gift card code applied with discount in subtotal

Scenario : User should not be able to apply the already used gift card code for an item in the shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter the already applied gift card code as "<gift card code>" for an item
  And   I select Add gift card option
  Then  I should not see the gift card code applied
  And   I should see a error message "The gift card code you entered couldn't be applied to your order"

Scenario : User should not be able to apply the invalid gift card code for an item in the shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter an invalid gift card code for an item
  And   I select Add gift card  option
  Then  I should not see the gift card code applied
  And   I should see a error message "The gift card code you entered couldn't be applied to your order"

Scenario Outline: User Should be able to fill the Estimate shipping details in shopping cart page

  Given I am in shopping cart page with atleast 1 item added to the basket
  When  I enter shipping information such as "<country>" ,"<State/province>" ,"<Zip code>"
  And   I select Estimate shipping button
  Then  I should see shipping Estimation information

  Examples:

  |country      |State/province|Zip code|
  |India        |  Tamilnadu   | 600063 |
  |India        |Andhrapradesh | 500044 |
  
Scenario : User should be able to checkout once accepted with the terms of service

  Given I am in shopping cart page with atleast 1 item added to the basket providing estimate shipping ,coupon code details
  When  I select the "I agree with the terms of service" checkbox
  And   I select Checkout option
  Then  I should see a order processing page without any errors

Scenario : User should not be able to checkout when the terms of service is not accepted

  Given I am in shopping cart page with atleast 1 item added to the basket providing estimate shipping ,coupon code details
  When  I do not select the "I agree with the terms of service" checkbox
  And   I select Checkout option
  Then  I should see a error message as "Please accept the terms of service before the next step"

#  9/10 <class> Great work excellent work. You can still imrpove on scnarios as I can be replaces with cosutomer and every line not need to  be start with I







