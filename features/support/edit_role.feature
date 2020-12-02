#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for editing the roles in the the Roles page
#This page uses routes defined in paths.rb and web_steps to function
Feature: EDIT ROLE

Scenario:  As a a user so I can edit a users role I want to be able to edit a specific role and update each member

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
When I follow "Edit"
When I fill in "Name" with "Ricky Bobby"
When I fill in "Description" with "baby jesus"
When I press "Update Role"
Then I should not see "Amin Elgazar"
Then I should see "Ricky Bobby"
# The last two lines in the steps ensures that 1.Amin Elgazar is no longer a User and 2.Ricky Bobby is instead
