Feature: User can purchase a subscription

    Background:
        Given we have 1 laundry
        And we have 1 user with email 'thomas@craft.se'
        And we have 1 subscription with title 'family-pack'
        And I am logged in as 'thomas@craft.se'

@javascript
    Scenario: User can purchase a subscription
        And I am on the "landing" page
        And I click on "Subscriptions"
        And I should see "Family pack"
        And I click on "Family pack"
        Then I should see "Amount"
        Then I click on "Pay with Card" button
        When I fill in the payment form with valid CC credentials
        And I click on "Submit payment"
