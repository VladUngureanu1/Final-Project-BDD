Feature: Check that the login functionality of the Jules_app website is working properly

  Background:
    Given The user is on the Jules_app homepage

  @T1 @positiveTesting
  Scenario: Check that the user can login into the application when inserting valid credentials
    When  The user inserts valid credentials on the Email and Password fields
    When  The user clicks on the login button
    Then  The user is logged into the application

#  @T2 @negativeTesting
#  Scenario: Check that the user cannot login into the application when inserting invalid Email and valid Password
#    When  The user inserts invalid Email and valid Password
#    When  The user clicks in the login button
#    Then  The user receives error message and cannot login into the application
#
#  @T3 @negativeTesting
#  Scenario: Check that the user cannot login into the application when inserting valid Email and invalid Password
#    When  The user inserts valid Email and invalid Password
#    When  The user clicks in the login button
#    Then  The user receives error message and cannot login into the application
#
#  @T4 @negativeTesting
#  Scenario: Check that the user cannot login into the application when inserting invalid credentials
#    When  The user inserts invalid Email and invalid Password
#    When  The user clicks in the login button
#    Then  The user receives error message and cannot login into the application

  @T6
  Scenario Outline: Check that the user cannot login into the application when inserting invalid credentials
    When  The user inserts invalid username "<Email>" and invalid password "<Password>"
    When  The user clicks in the login button
    Then  The user receives error message "Invalid email/password combination" and cannot login into the application
    Examples:
      | Email                |   Password      |
      |test@test.com         | Dacialogan2023! |
      |simebi2783@asuflex.com|    testpass     |
      |test2@gmail.com       |    passtest     |