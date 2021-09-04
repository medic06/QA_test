Feature: Scenario3

  @selenium
  Scenario: Validate Terms of Use

  Given Open the app url
  And Click on TERMS OF USE
  And Click on Language drop down and Verify languages
  And Validate Effective as of is today's date
  Then Verify page url

