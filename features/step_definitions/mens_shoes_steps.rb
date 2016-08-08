Given /^I am on zappos\.com$/ do
  visit('/')
end

Given /^I am shopping for men\'s shoes$/ do
  find(:xpath, "/html/body/div[5]/div[11]/div[1]/div[2]/div/a[2]").click
end

Given /^I am shopping for athletic men\'s shoes$/ do
  find(:xpath, "/html/body/div[5]/div[12]/div[1]/div[2]/div/a[1]").click
end

When /^I choose to shop for "([^"]*)"$/ do |term|
  find(:xpath, "//*[@id='FCTbrandnamefacetSelect']/a[65]").click
end

Then /^I should see results$/ do
  expect(page).to have_content("Bare-XF 210")
end
