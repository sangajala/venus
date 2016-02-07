
Feature:Shopping Cart

  Scenario: : Customer should be able to add selected item to the shopping cart on nopcommerce Webpage .

    Given I am on product detail page
    When I select the item and quantity as "Apple Macbook pro-13inch", "2"
    And  I press the button as "Add to Cart"
    And  I select the link as "update shopping cart"
    Then I should see shopping cart with successfully added shopping item

  Scenario Outline:Customer should be able to add selected items into shopping cart.

    Given I am on product detail page
    When I select and add shopping items as "<Product>","<Quantity>"
    And  I press the button as "Add to Cart"
    And  I select the link as "update shooping cart"
    Then i should see shopping cart with successfully added shopping items

    Examples:
      | Product                 |Quantity|
      |Apple macbook Pro-13inch | 2      |
      |Apple icm                |  3     |

  Scenario: : Customer should be able to add selected item to the shopping cart on nopcommerce Webpage .

    Given I am on product detail page
    When I select the item and quantity as "Apple Macbook pro-13inch", "0"
    And  I press the button as "Add to Cart"
    And  I select the link as "update shooping cart"
    Then I should see Error message "<Please Add Quantity>"

  Scenario Outline:Customer should be able to complete the check out process.

    Given I am in shopping cart page with atleast 1 item in basket
    When I select the gift wrapping option from drop down menu as "Yes"
    And  I add discount coupon in "Discount Code Box" as "AWGHBD1245" and press "Apply Coupon" Button
    And  I add Gift Card coupon in "Gift Cards Box" as "2gh5" and press "Add Gift Card" Button
    And  I select on Estimate Shipping Drop down option and choose as "<Country>", "<State/Province>"
    And  I press on to "Estimate Shipping" option
    And  I Select the "I Agree with the terms of the service "checkBox
    And  I press on the "Checkout" Button
    Then I should be able to see updated "Shopping Cart" icon on the toolbar

#    good stuff<class>


    Examples:
      | Country      | State/Province |
      |United States | Atlanta        |
      |United Kingdom|Feltham         |


  Scenario :Customer should be able to complete the check out process.

    Given I am in shopping cart page with atleast 1 item in basket
    When I select the gift wrapping option from drop down menu as "Yes"
    And  I add discount coupon in "Discount Code Box" as "AWGHBD1245" and press "Apply Coupon" Button
    And  I add Gift Card coupon in "Gift Cards Box" as "2gh5" and press "Add Gift Card" Button
    And  I press on Estimate Shipping Drop down option and choose as "<United Kingdom>", "<Harrow>"
    And  I press on to "Estimate Shipping" option
    And  I press on the "Checkout" Button
    Then I should see error messege "<Please select I Agree with the terms of the service checkbox>"

  Scenario :Customer should be able to complete the check out process.

    Given I am in shopping cart page with atleast 1 item in basket
    When I add discount coupon in "Discount Code Box" as "AWGHBD1245" and press "Apply Coupon" Button
    And  I add Gift Card coupon in "Gift Cards Box" as "2gh5" and press "Add Gift Card" Button
    And  I select on Estimate Shipping Drop down option and choose as "<United Kingdom>", "<Harrow>"
    And  I press on to "Estimate Shipping" option
    And  I press on the "Checkout" Button
    Then I should see error messege "<Please select Gift Wrapping Option>"












