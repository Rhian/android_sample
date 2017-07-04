require_relative '../pages/app'

Given(/^I am on the homescreen of the app$/) do
  startpage.checklocation
end

And(/^I complete the sign up of as a new user$/) do
  startpage.signup
  registration.signup_random
end

Then(/^I should see the main page$/) do
  wait {find_element(name: 'Welcome')}
end