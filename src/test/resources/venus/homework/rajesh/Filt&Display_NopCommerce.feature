Feature: sorting items for viewing

  Scenario Outline: sorting the displayed items by "sort by" options
  Given:    the customer is on the nopcommerce demo category page
  When:     he clicks on sort by drop down menu and chooses "<options>"
  Then:     the items should be sorted accordingly

  Examples:
  |options|
  |Position|
  |Name: A-Z|
  |Name: Z-A|
  |Price: Low to High|
  |Price: High to Low|
  |Created on        |

  Scenario Outline: sorting display items per page
  Given:    the customer is on the nopcommerce demo category page
  When:     he clicks on display drop down and chooses "<number of items per page>"
  Then:     the number of items depending on the availability and the number chosen, should be displayed

  Examples:
  |number of items per page|
  |3                       |
  |6                       |
  |9                       |

  Scenario: filtering items by price
  Given:    the customer is on nopcommerce demo category page and the filter by price option is available
  When:     when he clicks on a price range under Filter by price
  Then:     only the items within that price range should be displayed

  Scenario: filtering items by attributes
  Given:    the customer is on nopcommerce demo category page and the filter by attributes options is available
  When:     when he clicks on a particular attribute
  Then:     only the items related to that attribute should be displayed

  Scenario: removing filters in the search
  Given:    the customer is accessing items based on an attribute
  When:     he clicks remove filter button
  Then:     the page should revert back to the full list of items

  Scenario: sort the items by grid/list
  Given:    the customer is on the nopcommerce demo category page
  When:     he clicks either grid or list
  Then:     the list of items should be sorted accordingly