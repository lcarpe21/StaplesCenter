Given("I am on the home page") do
    visit root_path
end

When("I click on the {string} link") do |string|
  click_link string
end

When("I click on the {string} button") do |string|
  click_button string
end

When("I fill in the Title field with Test article") do
  fill_in('Title', :with => 'Test article')
end

When("I fill in the Text field with just testing to create article") do
  fill_in('Text', :with => 'just testing to create article')
end

When("I fill in the Commenter field with jeremy") do
  fill_in('Commenter', :with => 'jeremy')
end

When("I fill in the Body field with I am testing!") do
  fill_in('Body', :with => 'I am testing!')
end

When("I fill in the Body field with I edited this") do
  fill_in('Body', :with => 'I edited this')
end

Then("I should be on the {string} page") do |string|
  expect(page).to have_content(string)
end

Then("I should see the {string} field") do |string|
  expect(page).to have_field(string)
end

Then("I should see the {string} content") do |string|
  expect(page).to have_content(string)
end

Then("I should not see the {string} content") do |string|
  expect(page).should have_no_content(string)
end