Given /^I am on zappos\.com$/ do
  visit('/')
end

Given /^I have set up my shop men\'s links$/ do
  $shop_mens_shoes = "/html/body/div[5]/div[11]/div[1]/div[2]/div/a[2]"
  $shop_mens_athletic_shoes = "/html/body/div[5]/div[12]/div[1]/div[2]/div/a[1]"
end

Given /^I am shopping for this brand "([^"]*)"$/ do |term|
  find_link(term).click
end