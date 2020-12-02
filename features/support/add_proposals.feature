#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for accessing the active proposals page in the navbar
#This page uses routes defined in paths.rb and web_steps to function

Feature: User can Add a proposal
#This step along with any other proposals step fail because of the dropdown menu in prog_users. 
#We were unable to come up with a web_step or selector to access the dropdown menu trying every

Scenario:  As a User so that I can create a proposal I want to be able to add a proposal


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
When I follow "PROG USER"
When I follow "New Prog User"
#This is the step when on the prog_user page that will dropdown the menu and select user and role
When I press "Create Prog user"
When I follow "Back"
When I follow "Home"
When I follow "CREATE PROPOSALS"
When I fill in "Title" with "Proposal 1"
When I fill in "text" with "Vote for me now please"
#Another dropdown menu unable to be selected
When I press "Create Proposal"
