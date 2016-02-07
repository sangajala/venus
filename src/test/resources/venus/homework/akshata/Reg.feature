Feature: User Registration
  Scenario: User should be able to fill in personal details to create Username
    Given User on Registration page
    When User enters Personal details First name as Atal
    And Last Name as Vajpaye
    And Email as AtalBihari@gmail.com
    And UserName as AtalBP
    And Select Country as India
    And click on Newsletter checkbox
    And Password as pswd
    And Confirm Password as pswd
    And click on Register Button
    Then User Registration Completed message should appear


#    the feature file is not parmatersised. It should have input as parameters and exmaple as data
#  <class>