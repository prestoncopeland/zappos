Feature: Shopping for Men's Athletic Shoes By Brand

Scenario: Adding to cart without choosing size

Given I am on zappos.com
Given I am shopping for men's shoes
Given I am shopping for athletic men's shoes
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I attempt to add the model "F-Lite™ 250" to the cart without selecting size
Then a tooltip prompting me to select a size should appear
