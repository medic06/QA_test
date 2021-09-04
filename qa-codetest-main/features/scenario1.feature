Feature: Scenario1

  @selenium
  Scenario: Invalid credentials

  Given Open the app url
  And I enter username
  And I enter password
  When I click on LOG IN button
  Then Error message is displayed