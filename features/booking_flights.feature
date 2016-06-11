Feature: As a user I can book the flight

  Scenario: Book the flight successfully
    When I am on the "LoginPage" page
    And I login with current user
    Then I should be on the reservation page
    When I find the flights on the reservation page
    And I choose the flights on the select flights page
    And I input needed info on the purchase page
    Then I should see my booking is done
