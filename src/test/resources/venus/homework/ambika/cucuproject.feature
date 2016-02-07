

      Feature   : Order Details Page
      Scenario  : Users ability to view the Order Details page
         Given  : Iam in My Account with at least one completed order.
         When   : The user completes the Order successfully
         Then   : The user should be able view the Order Details with Order Number,Order Status,Order Date,Order Total

        Scenario : Users ability to view the Order Details Summary page
          Given  : Iam in My Account with at least one completed order.
          When   : The user clicks the Order Details
          Then   : The user should be able view the details of the Order summary details with Billing Address,Shipping Address,Payment,Shipping,Product list items.

        Scenario : Users ability to print the Order Details Summary page
          Given  : Iam in My Account with at least one completed order.
          When   : The user clicks print button in the the Order Details
          Then   : The user should be able to see print preview the details on a separate window

        Scenario : Users ability to generate PDF invoice in the Order Details Summary page.
          Given  : Iam in My Account with at least one completed order.
          When   : The user clicks PDF Invoice button in the Order Details
          Then   : The user should be able to see PDF invoice preview the details on a separate window

        Scenario : Users ability to Re-Order from the Order Details Summary page.
          Given  : Iam in My Account with at least one completed order.
          When   : The user clicks Re-Order button in the Order Details
          Then   : The user should be re-order the product list.


#          Scnarios are good and terminlolgy looks good however we shojld not see low level things like click instead it shuld say
#        user downloads the invoice etc. ALso the steps shoiuld not always be 3 it can be more than that

#        8/10 at this level <class>