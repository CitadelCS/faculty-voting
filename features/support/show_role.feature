Feature: Show Role

Scenario:  As a a user so I can have a role I want to be able to add a role

Given I am on the Sign In page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I check "Remember me"
When I press "Log in"
When I go to the home index page
When I go to the roles page
When I follow "New Role"
When I fill in "Name" with "Amin Elgazar"
When I fill in "Description" with "Product Owner"
When I press "Create Role"
When I follow "Back"
When I follow "Show"
