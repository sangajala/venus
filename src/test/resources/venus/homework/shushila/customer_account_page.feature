Feature:Customer account pages

  3      Scenario Outline: User can see his  registration details in the customer account page
  4
  5        Given :I should be in customer account page
  6        When :I click login email address
  7        Then:It will navigate to customer account page and we can verify the details over there.
  8
  9        Examples:
  10       |Gender|First name|Last name|Email|Date of birth|Company name|Options|
  11
  12       Scenario: User can still able to change his registration details in the customer account page
  13
  14         Given :I should be in the customer account page
  15         When :I can see the registration details
  16         And:I can edit some of the information and click save
  17         Then :I can able to make the changes and i can verify  the changes when i am login next time
  18
  19   Scenario Outline: User can add his address in the Customer account page
  20
  21     Given :I should be in the address page
  22     When :I click on the add new address button
  23     And:I can navigate to "Add new address" page
  24     Then :I can able to add this new feature into the customer account page
  25
  26     Examples:
  27     |First name|Last name| Email|Country|City|Address 1|Zip/Postal code|Phone number|
  28
  29
  30   Scenario: User unable to add hid address in the customer account page
  31
  32     Given :I should be in the address page
  33     When :I click on the add new address button
  34     And:I can navigate to "Add new address" page
  35     Then:I dont enter any valid address details
  36     And:Leave some field blank
  37     Then :I cant able to add this new feature into the customer account page


  #dont use can in when condition and Then we have to use "should" <class> 6/10