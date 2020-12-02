#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for editing the roles in the the Roles page
#This page uses routes defined in paths.rb and web_steps to function

Feature: Delete Role

Scenario:  As a a user so I can delete a role I want to be able to destroy the role from the Roles page

Given I am on the signup page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I fill in "Password confirmation" with "Password1!"
When I press "Sign up"
Then I should be on the home index page
When I follow "ROLES"
When I follow "New Role"
When I fill in "Name" with "Mickey Mouse"
When I fill in "Description" with "Product Owner"
When I press "Create Role"
When I follow "Back"
When I follow "Destroy"
Then I should not see "Mickey Mouse" 
# The last line ensures that Mickey Mouse is no longer a User in Roles page