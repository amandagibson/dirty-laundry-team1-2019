Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("I click on {string} button") do |button|
  expect(current_path).to eq new_charge_path
end