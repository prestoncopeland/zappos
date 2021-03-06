Feature: Shopping for Men's Shoes Notify Me Popup

Scenario: User can access Notify Me popup

Given I have set up my shop men's links
Given I navigate until I'm choosing a specific men's athletic shoe
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I click Don't see your size?
Then the Notify Me popup should appear

Scenario: User can successfully fill in Notify Me popup form

Given I have set up my shop men's links
Given I navigate until I'm choosing a specific men's athletic shoe
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I click Don't see your size?
Then the Notify Me popup should appear
When I fill in the Notify Me form with this email "namely_test@gmail.com"

Scenario: User can leave Notify Me popup without submitting

Given I have chosen a specific men's athletic shoe
Given I have accessed the Notify Me popup
When I click Cancel on the Notify Me popup
Then the Notify Me popup should disappear