#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for adding users to faculty-voting the first process every user must do before sign/log in"
#This page uses routes defined in paths.rb and web_steps to function
Feature: User can Signup "(ADD A USER)"

Scenario: As a User so that I can be a member of faculty-voting I would like to be able to create a username and password that is saved.
#In paths.rb the sign up page is defined given its routes path
Given I am on the signup page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I fill in "Password confirmation" with "Password1!"
When I press "Sign up"
Then I should be on the home index page
#The home index page is defined in paths.rb as the home page given its route"