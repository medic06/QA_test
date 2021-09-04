Feature: Scenario2

  @selenium
  Scenario: Forgot Password

  Given Open the app url
  And I click on Forgot Password
  When I click on the SUBMIT button
  Then Email required message is displayed