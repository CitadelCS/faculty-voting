#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for accessing the archive proposals page in the navbar
#This page uses routes defined in paths.rb and web_steps to function

Feature: User can View archived proposals
Scenario: As a user so that I can view all archived proposals I want to be able go to the archived proposals page

Given I am on the signup page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I fill in "Password confirmation" with "Password1!"
When I press "Sign up"
Then I should be on the home index page
When I follow "ARCHIVED PROPOSALS"
Then I should be on the archived page
# The archived page is defined in paths.rb by its route to the page 