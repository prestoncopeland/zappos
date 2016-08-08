Feature: Notify Me Popup

Scenario: User can access popup

Given I am on zappos.com
Given I am shopping for men's shoes
Given I am shopping for athletic men's shoes
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I click Don't see your size?
Then the Notify Me popup should appear

Scenario: User can successfully fill in Notify Me form

Given I am on zappos.com
Given I am shopping for men's shoes
Given I am shopping for athletic men's shoes
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I click Don't see your size?
Then the Notify Me popup should appear
When I fill in the Notify Me form with this email "namely_test@gmail.com"

