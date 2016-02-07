Feature: Login page of nopcommerce
To test the login page of nopcommerce Website

  Scenario outline: Login with valid userid and passwo  Scenario Outline: 
    Given I should be at the login page
      And I provide valid userid and password
     When I click on login button
     Then I should be able to login to my account
      And The page should show my email ID
  
  Example:
      | User Name            | Passwprd     | Expected Result | 
      | (trupti)             | teena#89     | Invalid Details | 
      | Trupti*              | teena89      | Invalid Details | 
      | 1234                 | Teena89//    | Invalid Details | 
      | Trupti               | Teena        | Invalid details | 
      | trupti13             | Kaliyathakar | Succesful Login | 
      | TruptiGhinaiya       | Kalpi@909    | Succesful Login | 
      | punamsavaj@yahoo.com | kaliyathakar | Succesful Login | 
      | =-=-=-               | ######       | Invalid details | 
      | abcdefg              | hijklmnop    | Succesful Login | 
  
  Scenario: Costomer Account Info check.
  
    Given The customer shold be already loged in 
      And Costomer Wants to update their Account Information
     When The customer provide the valid account details
     Then The customer can be able to add or change the account setting
      But cant change in account history record
  
  Scenario: Change address
    Given I am already loged in
     When I go to address fuild,remove the old address It should ask for new address
     Then I have to put new address 
      And  click on save button it should be updated
  
  Scenario Outline: To check order details 
    Given I am alredy loged in
      And I am on order details page
     When I go to costomer orders 
     Then  It should show all orders' details there
  
  Example: Order Status 
  Order Date
  Total Amount
  Delivery Date
  
  Scenario Outline:To use the Reward Points 
    Given I am going to order a stuff from nopcommerce which offers reward points
      And I am (registered) eligible to earn Reward points
     When I order the product and ready to go for pay
     Then It should show my accumulated points with it's value
      And i should get both option to pay by card or to pay by point
  
  Example: If you place an order more than 100£ you can get 10£
  
      | Points you have | order you placed | point you earn | cummulitive point | payment methods available | 
  
      | 50.00£ | 50.00£ | 0.00£ | 50.00£ | Use Reward Point / Pay By Card | 
  
      | 50.00£ | 50.50£ | 0.00£ | 50.00£ | Pay By Card | 
  
      | 50.00£ | 30.00£ | 0.00£ | 50.00£ | Use Reward Point/ Pay By Card | 
  
      | 50.00£ | 100.00£ | 10.00£ | 60.00£ | Pay By Card |


#    no need of I in every line . Eacmples need headers 7/10
  
  
