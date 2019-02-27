Feature: User can book a laundry slot

As a User
In order to be able to do my laundry
I would like to be able to book a timeslot in the calendar

    Scenario:
        Given I visit the landing page
        When I click on "Feb 27"
        Then I should see "Timeslots"
        When I click on "11:00-15:00"
        Then I should see "Would you like to book this timeslot?"
