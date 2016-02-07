Feature: Shopping cart feature

Scenario: User views the shopping cart option available on home page

  Given Shopping cart option is available on home page
  When User clicks on shopping cart option
  Then User can view items available in shopping cart

Scenario Outline: Add item to shopping cart
  Given User is on product details page
  When User clicks on Add To Cart
  And he enters no of items to add in "<Qty>"
  And selects any other product if interested
  And Enter the "<Qty>"
  And Click the shopping cart link
  Then Shoppping cart displays with the added items

Examples:
  |Product(s)               |Price|Qty.| Total|
  |Nokia Lumia 1020         |$349 |1   |$349  |
  |Elegant Gemstone Necklace|$569 |1   |$569  |

Scenario: Remove an item from shopping cart
  Given User is on shopping cart page with at least 1 item in shopping cart
  When He select the item as "Nokia Lumia 1020" to be removed from the list
  And Clicks on Update Shopping Cart
  Then selected item should be removed from the list

Scenario: Update shopping cart
  Given User is on shopping cart page with at least 1 item in shopping cart
  When He select the item as "Nokia Lumia 1020" to be Edited from the list
  And change the 'Qty.'as '2'
  And Clicks on Update Shopping Cart
  Then Shopping cart details should be updated with new values in it


#  nice work<class>


