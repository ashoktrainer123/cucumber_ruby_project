Then(/^Select Flights page is displayed$/) do
  select_flights_page = Selectflightspage.new(@driver)
  select_flights_page.verify_page
end