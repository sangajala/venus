Feature:Order Details page-Shopping basket

Scenario: User should be able to add items in the basket

Given User's shopping basket contains 1 item in “ABCD”
When  User adds the book “ABCD” to my shopping basket
Then shopping basket should contain copies of “ABCD”



  Scenario: User should be able to delete items from the shopping cart


    Given User have few items in shopping cart
    When user delets one item from the shopping cart
    Then User should see not see that item in the shopping cart



    Scenaro: Adding same things more then once in the shopping cart


    Given User is on order details page
    When user adds same items twice in the basket
    Then user should see items without any error







