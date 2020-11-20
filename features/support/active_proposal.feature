Feature: User can View active proposals
Scenario: As a user so that I can view all active I want to be able to view all proposals


Given I am on the Sign In page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I check "Remember me"
When I press "Log in"
When I go to the home index page
When I go to the active page 