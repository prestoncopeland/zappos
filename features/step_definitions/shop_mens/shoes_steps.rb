Given /^I navigate until I\'m choosing a specific men\'s athletic shoe$/ do
  step "I am on zappos\.com"
  step "I am shopping for men\'s shoes"
  step "I am shopping for athletic men\'s shoes"
end

Given /^I have chosen a specific men\'s athletic shoe$/ do
  step "I have set up my shop men\'s links"
  step "I navigate until I\'m choosing a specific men\'s athletic shoe"
  step "I am shopping for this brand \"Inov-8\""
  step "I am shopping for this model \"F-Lite™ 250\""
end

Given /^I am shopping for men\'s shoes$/ do
  find(:xpath, $shop_mens_shoes).click
end

Given /^I am shopping for athletic men\'s shoes$/ do
  find(:xpath, $shop_mens_athletic_shoes).click
end

Given /^I am shopping for this model "([^"]*)"$/ do |term|
  find(:xpath, '//*[@id="searchResults"]/a[21]').click
end

When /^I choose a size$/ do
  page.select "UK 8 (US Men's 9)", :from => "dimensionValues"
end

When /^I click Add to Cart$/ do
  find_button("addToCart").click
end

When /^I attempt to add the model "([^"]*)" to the cart without selecting size$/ do |model|
  find_button("addToCart").click
end

Then /^a tooltip prompting me to select a size should appear$/ do
  expect(page).to have_content("Please select a size")
end

When /^I click Don\'t see your size\?$/ do
  find("#notifyMePopupLink").click
end

When /^I click Cancel on the Notify Me popup$/ do
  within_window(->{ page.title == "Zappos.com - Notify Me!" }) do
    find_button("Cancel").click
  end
end

Given /^I have accessed the Notify Me popup$/ do
  step "I click Don\'t see your size\?"
  step "the Notify Me popup should appear"
end

Then /^the Notify Me popup should disappear$/ do
  expect(page).to_not have_content("Just enter your email address below and we\'ll let you know when the combination you are looking for becomes available!")
end

Then /^the Notify Me popup should appear$/ do
  within_window(->{ page.title == "Zappos.com - Notify Me!" }) do
    expect(page).to have_content("NOTIFY ME!")
  end
end

When /^I fill in the Notify Me form with this email "([^"]*)"$/ do |test_email|
  within_window(->{ page.title == "Zappos.com - Notify Me!" }) do
    page.fill_in "Email", :with => "namely_test@gmail.com"
    page.select "Blue/Grey/Orange", :from => "styleId"
    page.select "UK 8 (US Men's 9)", :from => "dimensionValueIds"
    find_button("Notify Me!").click
    expect(page).to have_content("We'll send you an email at #{test_email} if the following combination becomes available:")
  end
end