Feature: Product Review
  In order to receive valuable feedback from registered users for a product

  Background:
    Given User is logged on
    And on the Product details page

  Scenario: Add review from Product details page
    Given Review link is available
    When User clicks on Review link
    Then Product Review page will be displayed
    Then Enter review title
    Then Enter review text
    Then Select rating level from Bad to Excelent
    Then Click on submit review
    But I will not see any existing reviews if none are present

  Scenario: Assess reviews from Product details page
    Given Reviews link is avaliable
    And Reviews are avaialable
    When User clicks on Review link
    Then Product Review page will be displayed
    Then User will be able to assess each review not authored by user
    Then Access each review as applicable


#    we should not see click and link is available kind of words
#  6/10