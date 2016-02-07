Feature: Purchase Processing

 Scenario: Consumer should be able to remove an item from their shopping cart.

  Given I am in the shopping cart page with one item in the cart
  When I select the remove check box on the shopping cart page
  And click the update shopping cart
  Then I should see a shopping cart screen with your "<shopping cart is empty>" message

#  good stuff bilal <class>

 Scenario: Consumer should be able to add two quantities of the same item in the shopping cart.

  Given I am in the shopping cart page with one item in the cart
  When I delete "1" from the quantity box on the shopping cart page
  And type "2" and click the update shopping cart
  Then I should see 2 in the quantity text box with the total cost updated with a new higher price.

 Scenario: Consumer should be able to select a gift wrapping option on their purchase.
  Given I am in the shopping cart page with an item in the cart
  When I select "Yes [+$10.00]" on the drop down menu
  And click update shopping cart
  Then I should see next to Gift Wrapping: "Yes [+$10.00]" additionally the total cost should also reflect
  this change with an increase of $10 to the price.

 Scenario: Consumer should not be able to check out without selecting the terms and conditions check box.

  Given I am in the shoppping cart page with an item in the cart
  When I leave the terms and conditions check box unchecked
  And click checkout
  Then I should see a terms of service message with "<Please accept the terms of service before the next step.>"

 Scenario: Consumer should not be able to apply an invalid discount code
  Given I am in the shopping cart page with an item in the cart
  When I enter "invalid code" in the apply coupon text box
  And I click apply coupon
  Then I should see the message in red  "<The coupon code you entered couldn't be applied to your order>"
    Examples:
    |Discount Code|
    |invalid code|


 Scenario: Consumer should be able to use apple a valid discount code
  Give I am in the shopping cart page with an item in the cart
  When I enter "20%ordertotal" in teh apply coupon text box
  And I click apply coupon
  Then I should see a new discounted price in the total cost.
    Examples:
    |Discount Code|
    |20%ordertotal|


#  great work. more examples need to be added for above scnarios. Click should not be used
# 8/10