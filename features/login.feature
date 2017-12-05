Feature: Visitor Login
  As a visitor
  In order to access my account
  I would like to be able to sign in


  Background:
    Given I visit the "Landing" page
    When I click "Login"
    Then I should be redirected to the "Login" page
    Given the following user exists
      | username | email                | password    | password_confirmation |
      | Scott    | hotmale@hotmail.com  | cutie123    | cutie123              |


  Scenario: Visitor fills in all fields [Happy Path]
    When I fill in "Email" with "hotmale@hotmail.com"
    And I fill in "Password" with "cutie123"
    And I click "Login"
    Then I should be redirected to the "Landing" page
    And I should be logged in as "hotmale@hotmail.com"
    And I should see "Successfully logged in"


  Scenario: Visitor does not fill in Email [Sad Path]
    When I fill in "Password" with "cutie123"
    And I click "Login"
    Then I should see "Email can't be blank"


  Scenario: Visitor does not fill in Password [Sad Path]
    When I fill in "Email" with "hotmale@hotmail.com"
    And I click "Login"
    Then I should see "Password can't be blank"


  Scenario: Visitor does not fill in both fields [Sad Path]
    When I click "Login"
    Then I should see "Password can't be blank"
    And I should see "Email can't be blank"
