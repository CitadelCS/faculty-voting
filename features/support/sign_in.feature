#Created by Team 1 group Bravo("Elgazar, Martin, Davis")
#this is the cucumber scenario for signing in after a signup has been established for convience to the user a checkbox: Remember is made available
#This page uses routes defined in paths.rb and web_steps to function
Feature: Log in 

Scenario:  As a User so that I can use the app I want to Login
#The Sign In page is found in paths.rb given its route 
Given I am on the Sign In page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I check "Remember me"
When I press "Log in"
When I go to the home index page
#The home index page is defined in paths.rb as the home page given its route"