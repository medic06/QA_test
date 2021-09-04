## Instructions:

- Clone this repository on your local computer.
- Automate the scenarios givem below.
- Push all the changes to your own git repository.
- Provide us access to evaluate.

## Scenarios to Automate:

##### Scenario 1:

>Open app url.

>Enter some invalid credentials.

>Validate if the error message is "We didn't recognize the username or password you entered. Please try again."

Write this scenario under scenario1.feature

##### Scenario 2:

>Open app url.

>Click on "Forgot Password?".

>Click on Submit without giving any email address.

>Validate if the error message is "Error: Email address required"

>Enter some text "abcd" and click on Submit.

>Validate if the error message is "Error: Invalid email address"

Write this scenario under scenario2.feature


##### Scenario 3:

>Open app url.

>Click on "TERMS OF USE" at the bottom of page.

>Validate if it opens a page with url "https://www.datasite.com/us/en/legal/terms-of-use.html"

>Validate if today's date is displayed next to "Effective as of".

>Click on Language drop on top right corner.

>Verify drop down has Français, Deutsch, 中文, 日本語, Español and Italiano.

Write this scenario under scenario3.feature

All the step definitions should be added in features/step_definitions/stepDefinitions.rb

features/support/objectRepository.yaml is the object repository.

**App url**: https://americas.datasite.com/