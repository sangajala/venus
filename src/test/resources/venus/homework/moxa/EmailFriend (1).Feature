
  Feature: Emailing a Friend

    Scenario :User should be able to send email to friend to recommend a specific product

      Given I am on product detail page as "Apple Macbook Pro-13inch"
      When I enter friend's email in "Friend's Email" Box
      And  I enter my email in " Your Email Address " Box
      And  I enter Personal Message " this product is really good"
      Then I press "Send Email" Box

#      after that what are youi expecteing <class> scnrios is not complete 7/10

    Scenario: User should be able to send email to friend to recommend a specific product

      Given I am on product detail page as "Apple Macbook Pro-13inch"
      When I enter friend's email in "Friend's Email" Box
      And  I enter my email in " Your Email Address " Box
      And  I enter Personal Message " this product is really good"
      Then I press "Send Email" Box


