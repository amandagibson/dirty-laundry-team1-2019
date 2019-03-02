Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

# Then("I click on {string} button") do |button|
#   click_on button
# end

Then("I click on {string} button") do |button|
  case button
  when "Pay with Card"
    visit new_charge_path
  else
    return false
  end
end