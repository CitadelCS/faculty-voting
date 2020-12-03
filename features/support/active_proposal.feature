#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for accessing the active proposals page in the navbar
#This page uses routes defined in paths.rb and web_steps to function

Feature: User can View active proposals
Scenario: As a user so that I can view all active proposals I want to be able to see all proposals

#This step along with create proposals steps fail because of the dropdown menu in prog_users. 
#We were unable to come up with a web_step or selector to access the dropdown menu trying everything and every resource availble.

Given I am on the signup page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I fill in "Password confirmation" with "Password1!"
When I press "Sign up"
Then I should be on the home index page
When I follow "ROLES"
When I follow "New Role"
When I fill in "Name" with "Amin Elgazar"
When I fill in "Description" with "Owner"
When I press "Create Role" 
When I follow "Back"
When I follow "Home"
When I follow "PROGRAM USER"
When I follow "New Prog User"
When I select option 1 from @user
When I press "Create Prog user"
When I follow "Back"
When I follow "Home"
When I follow "CREATE PROPOSALS"