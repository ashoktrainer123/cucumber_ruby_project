class Selectflightspage
  def initialize(driver)
    @driver = driver
  end

  def verify_page
    if @driver.title == "Select a Flight: Mercury Tours"
      puts "Test Passed"
    else
      fail "Test Failed"
    end
    fail unless @driver.find_element(:name, "reserveFlights").displayed?
  end
end