Given("I am on the {string} page") do |string|
  visit root_path
end

When("I click on {string} on {string}") do |time, date|
  case date
  when "tomorrow"
    date_slot = Date.today + 1.day
  end

  within("##{date_slot.to_formatted_s(:dc)}") do
    click_on time
  end
end

Given("we have {int} laundry") do |int|
  int.times do |room|
    create(:laundry)
  end
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

Given /^I log out$/ do
  logout
end

Given("we have (1 )user with email {string}") do |email|
  create(:user, email: email)
end

Given("we have (1 )subscription with title {string}") do |title|
  create(:subscription, title: title)
end

Given("I click on {string}") do |string|
  click_on string
end

When("I fill in the payment form with valid CC credentials") do
  stripe_frame = find("iframe[name='__privateStripeFrame4']")
  within_frame stripe_frame do
    card_field = find_field('cardnumber')
    exp_date_field = find_field('exp-date')
    cvc_field = find_field('cvc')

    4.times { sleep 0.1; card_field.send_keys(right: '4242'); sleep 0.1;  }
    exp_date_field.send_keys('1221')
    cvc_field.send_keys('123')
  end
end