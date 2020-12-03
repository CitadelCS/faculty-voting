#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for accessing the settings page in the navbar
#This page uses routes defined in paths.rb and web_steps to function

Feature: User can change settings
Scenario: As a user so that I can change current settings I want to be able go to the settings page

Given I am on the signup page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I fill in "Password confirmation" with "Password1!"
When I press "Sign up"
Then I should be on the home index page
When I follow "SETTINGS"
#Then I should be on the settings page
# The archived page is defined in paths.rb by its route to the page 