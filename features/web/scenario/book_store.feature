@book-store
Feature: Book Store

Background:
  Given user go to login page
  And validate page have content "Login" exist
  When user input field username "aris"
  And user input field password "Pastibisa123@"
  And user click button "Login" on page
  Then validate user successfully login

@search-book
Scenario: User can search book from book stores
  Given user go book store page
  When user search book name "Git Pocket"
  And validate page have content "Git Pocket Guide" exist
  And user click link "Git Pocket Guide" on page
  Then validate page have content "9781449325862" exist
  And validate page have content "Git Pocket Guide" exist
  And validate page have content "Richard E. Silverman" exist