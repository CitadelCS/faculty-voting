Feature: User can manually add proposals

Scenario: Add a a new proposal 

Given I am on the home page 
When I follow proposals
Then I should be on the create proposals page
When I fill in 
And I select "create proposals"
Then I should see ""

#Feature: User can log in

#Scenario: Login

#Given I am on the home page
#When I check create proposals

