@login
Feature: Feature Login

@login-valid-credentials
Scenario: User can login with valid credentials
  Given user go to login page
  And validate page have content "Login" exist
  When user input field username "aris"
  And user input field password "Pastibisa123@"
  And user click button "Login" on page
  Then validate user successfully login