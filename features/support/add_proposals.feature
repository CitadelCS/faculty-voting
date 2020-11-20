Feature: User can Add a proposal
Scenario: Add a a new proposal 


Scenario:  As a User so that I can create a proposal I want to be able to add a proposal

Given I am on the Sign In page
When I fill in "Email" with "aelgazar@citadel.edu"
When I fill in "Password" with "Password1!"
When I check "Remember me"
When I press "Log in"
When I go to the home index page
When I go to the new proposal page
When I fill in "Title" with "Vote for this"
When I fill in "Text" with "We would like...."
Then I press "Create Proposal"

