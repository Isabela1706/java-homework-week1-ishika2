Feature: Nopcommerce Registration
  As a User
  I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
                Given I open the Google Chrome Browser
                When  I open the Url https://demo.nopcommerce.com/register
                Then  I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When   I enter first name "<First Name>"
    And    I enter last name "<Last Name>"
    And    I enter Email address "<Email>"
    And    I enter Password "<Password>"
    And    I enter Confirm Password "<Confirm Password>"
    And    Click on Register button
    Then   I can see an error message "<error message>"
    And    I am not able to register

    Examples: |First Name|Last Name|Email| Password|Confirm Password|error message|
               | ""       | patel    | dev@gmail.com | 1234 | 1234    | please enter first name                    |
               | dev      |    ""    | dev@gmail.com | 1234 | 1234    | please enter last name                     |
               | dev      | patel    |       ""      | 1234 | 1234    | please enter valid email                   |
               | dev      | patel    | dev@gmail.com | ""   | 1234    | password is required                       |
               | dev      | patel    | dev@gmail.com | 1234 |   ""    | confirm password is required               |
               | dev      | patel    | dev@gmail.com | 1234 | 1235    | password and confirm password do not match |
               | dev      | patel    | dev@gmail.com | 1234 |   ""    | minimum 4 character password is required   |
               |    ""    | ""       | ""            | ""   | ""      | Mandatory (*) filed is required            |

    Scenario: I should be able to select any one radio button from gender label of your personal details section
           Given I am on Gender label of your personal detail section
           When I select "Male" radio button
           And  I select "Female" radio button
           Then I am able to select any one of the radio button


      Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
               Given I am on Date of Birth field of your personal detail section
               When I select day "<Day>"
        And I select month "<Month>"
        And I select Year "<Year>"
        Then I am able to select Day, Month and Year from drop down list

        Examples:
                 |Day   |  Month   |Year|
                 |23	|November  |2001|

Scenario: I should be able to check and uncheck the Newsletter box on Options section
         Given I am on Newsletter label on Option section
         When I click on Newletter checkbox
         And I again click on Newsletter Checkbox
         Then I was able to check and uncheck the box next to Newsletter label



Scenario: I should be able to register with valid mandatory (*) field data on registration page
        When I enter First name "dev"
        And	 I enter Last name "patel"
        And  I enter Email "dev@gmail.com"
        And  I enter Password "1234"
        And  I enter Confirm Password "1234"
        And  I click on Register button
        Then I was able to register successfully




