class ReservationPage
  include PageObject

  button(:find_flights, name: 'findFlights')
  radio_button(:round_trip, value: 'roundtrip')
  select_list(:from_port, name: 'fromPort')
  select_list(:to_port, name: 'toPort')

  page_url('http://newtours.demoaut.com/mercuryreservation.php')

  def loaded?
    round_trip_element.visible?
  end

  def find_flights
    wait_until { self.loaded? }
    from_port_element.options.sample.click
    to_port_element.options.sample.click
    find_flights_element.click
  end

end