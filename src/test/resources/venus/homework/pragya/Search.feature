Feature: Search functionality of http://demo.nopcommerce.com/
  Scenario:Verify the search functionality of http://demo.nopcommerce.com/
    Given I navigate to Home page of http://demo.nopcommerce.com/
    When I  writes keyword<items> in the search box
    And I click on search button
    Then search items should show items as per items given


  Scenario Outline : Verify search functionality should not work for invalid search items
    Given I navigate to http://demo.nopcommerce.com/
    When I write keyword <text>in search box
    And i click on search button
    Then I should see items not found message
    Examples:
      |laptop |
      |abcd |

#    Ok but not soo great 6/10







