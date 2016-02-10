require 'selenium-webdriver'

#Starting the browser
Before do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  @driver.manage.timeouts.implicit_wait = 10 # seconds
end


After do
  @driver.quit
  #@driver.close
end