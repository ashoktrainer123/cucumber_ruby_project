class Flightfinderpage
  def initialize(driver)
    @driver = driver
  end

  def verify_page
    if @driver.title == "Find a Flight: Mercury Tours:"
      puts "Test Passed"
    else
      fail "Test Failed"
    end
    fail unless @driver.find_element(:name, "findFlights").displayed?
  end


  def complete_flight_finder_page(record)
    @flight_finder_record = YAML.load(File.read("C:/Users/trainer/RubymineProjects/Cucumber_Batch4/features/data/data.yaml"))
    select_flight_type(@flight_finder_record["#{record}"]["trip_type"])
    select_no_of_passngrs(@flight_finder_record["#{record}"]["no_of_passengers"])
    select_depart_city(@flight_finder_record["#{record}"]["depart_city"])
    select_depart_month(@flight_finder_record["#{record}"]["depart_month"])
    select_depart_day(@flight_finder_record["#{record}"]["depart_day"])
    select_arrival_city(@flight_finder_record["#{record}"]["arrival_city"])
    select_return_month(@flight_finder_record["#{record}"]["return_month"])
    select_return_day(@flight_finder_record["#{record}"]["return_day"])
    select_service_class(@flight_finder_record["#{record}"]["service_class"])
    click_continue_btn
  end

  def select_flight_type(type)
    trip_type_btn = @driver.find_element(:xpath, "//input[@value='#{type}']")
    trip_type_btn.click
  end

  def select_no_of_passngrs(passenger_num)
    passenger_dropdown = @driver.find_element(:xpath, "//select[@name='passCount']")
    passenger_dropdown_options = passenger_dropdown.find_elements(:tag_name, 'option')
    passenger_dropdown_options.each { |num| num.click if num.text == "#{passenger_num}" }
  end

  def select_depart_city(depart_city)
    depart_city_dropdown = @driver.find_element(:xpath, "//select[@name='fromPort']")
    depart_city_dropdown_options = depart_city_dropdown.find_elements(:tag_name, 'option')
    depart_city_dropdown_options.each { |city| city.click if city.text == "#{depart_city}" }
  end

  def select_depart_month(depart_month)
    depart_month_dropdown = @driver.find_element(:xpath, "//select[@name='fromMonth']")
    depart_month_dropdown_options = depart_month_dropdown.find_elements(:tag_name, 'option')
    depart_month_dropdown_options.each { |month| month.click if month.text == "#{depart_month}" }
  end

  def select_depart_day(depart_day)
    depart_day_dropdown = @driver.find_element(:xpath, "//select[@name='fromDay']")
    depart_day_dropdown_options = depart_day_dropdown.find_elements(:tag_name, 'option')
    depart_day_dropdown_options.each { |day| day.click if day.text == "#{depart_day}" }
  end

  def select_arrival_city(arrival_city)
    arrival_city_dropdown = @driver.find_element(:xpath, "//select[@name='toPort']")
    arrival_city_dropdown_options = arrival_city_dropdown.find_elements(:tag_name, 'option')
    arrival_city_dropdown_options.each { |city| city.click if city.text == "#{arrival_city}" }
  end

  def select_return_month(return_month)
    return_month_dropdown = @driver.find_element(:xpath, "//select[@name='toMonth']")
    return_month_dropdown_options = return_month_dropdown.find_elements(:tag_name, 'option')
    return_month_dropdown_options.each { |month| month.click if month.text == "#{return_month}" }
  end

  def select_return_day(return_day)
    depart_day_dropdown = @driver.find_element(:xpath, "//select[@name='toDay']")
    depart_day_dropdown_options = depart_day_dropdown.find_elements(:tag_name, 'option')
    depart_day_dropdown_options.each { |day| day.click if day.text == "#{return_day}" }
  end

  def select_service_class(service_class)
    serv_class_type = @driver.find_element(:xpath, "//input[@value='#{service_class}']")
    serv_class_type.click
  end

  def click_continue_btn
    @driver.find_element(:name, "findFlights").click
  end
end

