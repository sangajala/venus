Feature: Searching

  Scenario: Customer should able to search for the products.

    Given Customer is in the search page
    When Customer enters the product name as "Apple"
    Then Customer should able to see the all the Apple products

  Scenario: Customer should able to search for the products with the advanced search.

    Given Customer is in the search page
    When Customer enters the produce name as "Apple","Macbook Pro","Apple","£1000-£2000"
    Then Customer should able to see All the Apple Macbook Pro with in the price range £1000-£2000

  Scenario Outline: Customer should able to see the products with the valid data
    Given Customer is in the search page
    When Customer enters the advanced serach details as "<Search Keyword>","<Category>","<Manufacturer>","<Price range>"
    Then Customer should able to see the products without any errors

    Examples:

    |Search Keyword|Category|Manufacturer|Price range|
    |Apple         |Macbook Pro|Apple    |£1000-£2000|
    |Apple         |Macbook Pro|         |£1000-£1500 |

  Scenario Outline: Customer should able to see the products with the invalid data
    Given Customer is in the search page
    When Customer enters the advanced serach details as "<Search Keyword>","<Category>","<Manufacturer>","<Price range>"
    Then Customer should able to see the erroe message

    Examples:

      |Search Keyword|Category|Manufacturer|Price range|Error|
      |Samsung      |Macbook Pro|Apple    |£1000-£2000|Could not find any products|
      |Apple        |           |Apple    |£1000-£1500|Plese enter Category Field |
      |Apple        |Macbook Pro|Apple    |£100-£500|Could not find any products |