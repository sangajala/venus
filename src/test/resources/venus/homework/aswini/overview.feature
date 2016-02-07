Feature: nopCommerce Home page

Scenario Outline: After running the site nopCommerce homepage is displayed.

  Given User is on landing page
  When The home page loads
  Then User should see Register,Login,Search options with enabling access to all the nopCommerce menus, function,pages.

  Examples: List of the menus on home page
  |Computers|Electronics|Apparel|Digital Downloads|Books|Jewelry|Gift Cards|

#  examples are used in wrong sense. They shouijild be parapterised
#  <class>

