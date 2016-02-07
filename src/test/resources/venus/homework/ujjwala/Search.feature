Feature: Search


  Scenario: User should be able to able to search by writing keywords in the searchbox


    Given User is on homepage
    When User writes keyword in the search box
    Then User should be able to search desirable product

#    again no elobration and no examples.6/10




  Scenario Outline  User should not be able to search


      Given User is on search page
      When user is not entering any value on  search box
      And User is searching the product by entering less then 3 letters as keywords
      Then User should get an error message


      Examples:
        |Search  |
        |abc     |