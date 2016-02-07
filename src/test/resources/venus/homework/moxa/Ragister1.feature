
Feature: Registration


  Scenario: Customer should be able to Register as a new user  on nopcommerce Webpage.

    Given I am on login page
    When I choose to Register as a new user
    And I enter personal details such as "Female","Nita ","Jain"
    And I select the date of birth drop down option as " 01/01/2000"
    And I enter email as "nita34@gmail.com"
    And I enter Company name as "nita creation ltd"
    And I provide password and confirm password such as"nj123"
    Then I should be able to register successfully.

  Scenario Outline: Customer should be not able to complete registration  with invalid details

    Given Given I am on login page
    When I choose to Register as a new user
    And I enter Personal details such as "<Gender>","<Name>","<last Name>"
    And I click on date of birth drop down option as "01/10/1999"
    And I enter email as "nita1@gmail.com"
    And I enter Company name as "nita creation ltd"
    And I provide password and confirm password as " nijain12" ,"nijain12"
    And I should get messege "<Error>"


    Examples:
      | Gender | Name | last Name |       Error                         |
      | Male   |Ashok |           |please complete last Name            |
      | Female |      | Desai     |please complete Name                 |
      |        | Jay  |           |please complete Gender and last name |

  Scenario: Customer should not be able to complete registration with invalid password

    Given I am on login page
    When I choose to Register as a new user
    And I enter personal details such as "Male","Murti ","Shah"
    And I click on date of birth drop down option as " 01/09/2012"
    And I enter email as "Murti123@gmail.com"
    And I enter Company name as "Murti corporation"
    And I provide password and confirm password such as"Murti123" and "Murtish123"
    Then I should get Error messege "<Password does not match>"

  Scenario: Customer should be able to Register as a new user  on nopcommerce Webpage.

    Given I am on login page
    When I choose to Register as a new user
    And I enter personal details such as "male","Shreyas ","Jani"
    And I select the date of birth drop down option as " 21/11/2010"
    And I enter email as "n@gmail.com"
    And I enter Company name as "Shrey Foundation ltd"
    And I provide password and confirm password such as"ad123"
    Then I should get error message "<Please enter Valid Email>".
