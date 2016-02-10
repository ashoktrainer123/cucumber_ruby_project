Then /Flight Finder page is displayed/ do
  flight_finder_page = Flightfinderpage.new(@driver)
  flight_finder_page.verify_page
end

When(/^I complete the Flight information using the (.*)$/) do |record|
  flight_finder_page = Flightfinderpage.new(@driver)
  flight_finder_page.complete_flight_finder_page(record)
end

