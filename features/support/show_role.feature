# Created by Team 1 group Bravo("Elgazar, Martin, Davis")
# This is the cucumber scenario for showing the roles in the Roles page
# This page uses routes defined in paths.rb and web_steps to function
Feature: Show Role

Scenario:  As a a user so I can view a specific role in Roles page I want to be able to show the roles of each 

Given I am on the signup page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I fill in "Password confirmation" with "Password1!"
When I press "Sign up"
Then I should be on the home index page
When I follow "ROLES"
When I follow "New Role"
When I fill in "Name" with "Amin Elgazar"
When I fill in "Description" with "Product Owner"
When I press "Create Role"
When I follow "Back"
When I follow "Show"
Then I should see "Product Owner"
Then I should see "Amin Elgazar"
# The last two steps ensures that the Role is able to be shown in the Scenario