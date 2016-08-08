Given /^I am on zappos\.com$/ do
  visit('/')
end

Given /^I am shopping for men\'s shoes$/ do
  find(:xpath, "/html/body/div[5]/div[11]/div[1]/div[2]/div/a[2]").click
end

Given /^I am shopping for athletic men\'s shoes$/ do
  find(:xpath, "/html/body/div[5]/div[12]/div[1]/div[2]/div/a[1]").click
end

Given /^I am shopping for this brand "([^"]*)"$/ do |term|
  find_link("Inov-8").click
end

Given /^I am shopping for this model "([^"]*)"$/ do |term|
  find(:xpath, '//*[@id="searchResults"]/a[21]').click
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


