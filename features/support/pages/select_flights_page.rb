class SelectFlightsPage
  include PageObject

  button(:reserve_flights, name: 'reserveFlights')

  page_url('http://newtours.demoaut.com/mercuryreservation2.php')

  def loaded?
    reserve_flights_element.visible?
  end

  def reserve_flights
    reserve_flights_element.click
  end
end