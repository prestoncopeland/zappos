Feature: Shopping for Men's Shoes By Brand

# here is one style of steps; more explicit and atomic

Scenario: Adding to cart without choosing size

Given I have set up my shop men's links
Given I navigate until I'm choosing a specific men's athletic shoe
Given I am shopping for this brand "Inov-8"
Given I am shopping for this model "F-Lite™ 250"
When I attempt to add the model "F-Lite™ 250" to the cart without selecting size
Then a tooltip prompting me to select a size should appear

# here is another style of steps; more encapsulated, perhaps clearer for non-dev team

Scenario: Adding to cart after choosing size

Given I have chosen a specific men's athletic shoe
When I choose a size
When I click Add to Cart
Then the item should be added to the cart



