When(/^I am on the "(.*)" page$/) do |page|
  visit(page)
end


When(/^I login with current user$/) do
  on(LoginPage).login
end


Then(/^I should be on the reservation page$/) do
expect(on(ReservationPage)).to be_loaded
end