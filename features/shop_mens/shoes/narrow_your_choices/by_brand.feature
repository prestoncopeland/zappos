Feature: Shopping for Men's Shoes By Brand

Scenario: Adding to cart without choosing size

Given I navigate until I'm choosing a specific men's athletic shoe
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I attempt to add the model "F-Lite™ 250" to the cart without selecting size
Then a tooltip prompting me to select a size should appear
