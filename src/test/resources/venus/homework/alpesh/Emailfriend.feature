Feature: Emailing a friend
  In order to promote more sales from registered user

  Background:
    Given User is logged on
    And on the Product details page

  Scenario: From product details page
    Given User clicks Email a Friend button
    Then Email a friend window is displayed containing the selected product information
    Then Enter the friend's email address
    Then Enter your email address
    Then Enter Personal message for recommendation
    Then Click on send mail button
# expecting paramtersised scenarios with examples and Then is used in wrong sense

#  <class>