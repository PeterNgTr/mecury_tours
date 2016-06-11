When(/^I find the flights on the reservation page$/) do
  on(ReservationPage).find_flights
end

When(/^I choose the flights on the select flights page$/) do
  on(SelectFlightsPage).reserve_flights
end

When(/^I input needed info on the purchase page$/) do
  on(PurchasePage).buy_flights
end

Then(/^I should see my booking is done$/) do
  expect(on(PurchasePage)).to have_bought_flight
end