Feature: Log in 

Scenario:  As a User so that I can use the app I want to Login

Given I am on the Sign In page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I check "Remember me"
When I press "Log in"
When I go to the home index page