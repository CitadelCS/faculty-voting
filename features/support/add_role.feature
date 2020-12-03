#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for adding a new role in the the Roles page
#This page uses routes defined in paths.rb and web_steps to function

Feature: Add Role 

Scenario:  As a a user so I can add a role to the role page I want to be able to add a new role by user

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
Then I should see "Amin Elgazar" 
Then I should see "Product Owner"