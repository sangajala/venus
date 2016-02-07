Feature: categories and manufacturers

  Scenario: accessing categories from the top panel
    Given:  the user is on the nopcommerce demo category page
    When:   he clicks on any of the item categories on the top
#  (any of the item should be replaced with example)<class>
    Then:   all the sub-categories under that particular category should be displayed followed by all the items listed under that main category

#    AND CONditions are missing .
  Scenario: accessing categories from the left panel
    Given:  the user is on the nopcommerce demo category page
    When:   he clicks on any of the item categories on the left
    Then:   all the sub-categories under that particular category should be displayed followed by all the items listed under that main category

  Scenario: viewing sub-categories from the category panel on the top
    Given:  the user is on the nopcommerce demo category page
    When:   when he hovers over any of the item Categories on the top
    Then:   drop down window listing all the sub-categories should appear underneath that particular category

  Scenario: viewing sub-categories from the category panel on the left
    Given:  the user is on the nopcommerce demo category page
    When:   when he clicks on any of the main categories on the left panel
    Then:   all the sub-categories listed under that main category should be displayed

  Scenario: verifying the colour of the category hyper links while hovering above
    Given:  the user is on the nopcommerce demo category page
    When:   he hovers over any of the item Categories on the top or to the left
    Then:   the colour of the respective hyper link should be highlighted

  Scenario: accessing the sub-categories from the category panel on the top
    Given:  the user is on nopcommerce demo category page
    When:   he hovers over any of the categories
    And:    clicks a sub-category
    Then:   all the items under that particular sub-category should be displayed

  Scenario: accessing the sub-categories from the category panel on the left
    Given:  the user is on the nopcommerce demo category page
    When:   he clicks on any of the category on the left
    And:    click on any of the sub-category listed underneath
    Then:   all the items listed under that particular sub-category should be displayed

  Scenario: accessing the items listed under particular manufacturer
    Given:  the user is on nopcommerce demo category page
    When:   he clicks on any of the Manufacturer's name
    Then:   all the items under that particular manufacturer should be displayed

  Scenario: accessing the entire list of manufacturers
    Given:  the user is on nopcommerce demo category page
    When:   he clicks on "View all" under the Manufacturers on the left
    Then:   the entire list of the manufacturers along with their logos should be displayed

  Scenario: checking the recently viewed items
    Given:  the user is on an item page
    When:   he clicks on an category/sub-category
    Then:   that particular item should appear top under the list of recently viewed items

  Scenario: linking the displayed items with the category and sub-category
    Given:  the user is on nopcommerce demo category page
    When:   he clicks on any item category/sub-category on the left panel
#   #same problem
    Then:   all the items displayed should be from that particular category/sub-category only
    And:    the colour of that particular category/sub-category should be highlighted on the left category panel

#    8/10


