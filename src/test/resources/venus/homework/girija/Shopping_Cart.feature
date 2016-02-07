Feature: Shopping Cart
  Scenario:User should allowed to add a product to the cart
    Given I am in the product details page to add a Laptop to the cart
    When I enter the number the number of items as "2"
    And I click the Add to cart button
    Then I should see a Add to cart link at the top of the title bar

  Scenario:User should allowed to add a product to the cart
    Given I am in the product details page to add a Mobile to the cart
    When I enter the number the number of items as "2"
    And I click the Add to cart button
    Then I should see a Shopping cart link at the top of the title bar

  Scenario:User should able to view all the products which are added to cart
    Given I am in the product details page with Shopping Cart link at the top of the menu bar
    When I click the Shopping cart link
    Then I should see a page with all te products which are added to shopping cart

  Scenario:User should allowed to select a Gift wrapping field in the shopping cart page
    Given I am in the Shopping cart page to select the Gift wrapping field
    When I select the Gift wrapping as "No"
    Then I should see a field without any error

  Scenario Outline: User should allowed to enter a Discount code
    Given I am in the Shopping cart page to enter the Discount code
    When I enter the "<Discount code>"
    And I click the APPLY COUPON button
    Then I should see a field without error
    Examples:
    |Discount code|
    |E12GGHH      |

  Scenario Outline: User should not allowed to enter a invalid Discount code
    Given I am in the Shopping cart page to enter the Discount code
    When I enter the "<Discount code>"
    And I click the APPLY COUPON button
    Then I should see a error "<error>"
    Examples:
      |Discount code|error                                                    |
      |E12GGH       |The coupon code you entered could not be applied to your order|


  Scenario Outline: User should  allowed to enter a  Gift cards code
    Given I am in the Shopping cart page to enter the Gift cards code
    When I enter the "<Gift Cards>"
    And I click the ADD GIFT CARD button
    Then I should see a field without error
    Examples:
      |Gift Card|
      |SSH23F   |

  Scenario Outline: User should not allowed to enter a invalid Gift cards code
    Given I am in the Shopping cart page to enter the Gift cards code
    When I enter the "<Gift Cards>"
    And I click the ADD GIFT CARD button
    Then I should see a  error "<error>"
    Examples:
      |Gift Card|error                                                         |
      |SSH2     |The coupon code you entered could not be applied to your order|

  Scenario:User should allowed to enter all the details for estimate shipping
    Given I am in the shopping cart page to enter all the estimation details
    When I select the Country as "United States"
    And I selcet State/Province as "Alabama"
    And I enter the Zip/Postal code as "E125RR"
    And I click the Estimate shipping button
    Then I should see a list of shipping details

  Scenario:User should allowed to remove a product from  the shopping cart page
    Given I am in the shopping cart page to remove a product from the cart
    When  I check the remove column
    And I click the Update shopping cart button
    Then I should not see that product in the shopping cart list

  Scenario:User should allowed to continue shopping from the shopping cart page
    Given I am in the shopping cart page to continue shopping
    When I click the Continue Shopping button
    Then I should see a product page

  Scenario: User should allowed to checkout the products
    Given I am in the shopping cart page to checkout the products
    When I check the I agree with the terms of service
    Then I should see a ordering process page


  Scenario Outline: User should not allowed to checkout the products without required fields
    Given I am in the shopping cart page to checkout the products
    When I Uncheck the I agree with the terms of service
    Then I should see a error "<error>"
    Examples:
    |error                                |
    |Please agree the terms and conditions|

#    Coverange is good <class>








