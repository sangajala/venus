Feature: Search feature to search from store


  Scenario: Search for store information

    Given user is in landing page
    When user enters "Book" to search store
    And clicks on Search
    Then User should get the search result or it will display message if products not found



  Scenario Outline: Search for store information with invalid data

    Given user is in landing page
    When user enters in <Search store>
    And clicks on Search
    Then User should get warning message

    Examples:
    |Search store|
    |            |
    |as          |



  Scenario Outline: Advance Search for store information

    Given user is in search page
    When user enters in <Search Keyword>
    And selects Advance search
    And User enter all required details
    And clicks on Search
    Then User should get the search result

#    what is the meaning ofr get search result <class>


    Examples:
      |Search Keyword|Advanced Search|Category |Manufacturer|Price Range|
      |Book          |Checked        |All      |All         |0 15       |
      |Laptop        |unchecked      |
      |Book          |Checked        |Computers|Apple       |1000 2000  |


  Scenario Outline: Advance Search for store information gives warning message

    Given user is in search page
    When user enters in <Search Keyword>
    And selects Advance search
    And User enter all required details
    And clicks on Search
    Then User should get the warning message


    Examples:
      |Search Keyword|Advanced Search|Category |Manufacturer|Price Range|
      |La            |unchecked      |
      |              |Checked        |Computers|Apple       |1000 2000  |


#    synctax errors<class>

