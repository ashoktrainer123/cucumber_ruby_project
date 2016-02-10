Given /I open the Website in browser/ do
  @driver.navigate.to "http://newtours.demoaut.com/"
end

When /I login with (\w+) username and (\w+) password/ do |user_name, pwd|
  sign_in_page = Signin.new(@driver)
  sign_in_page.login(user_name, pwd)
end


When(/^I login loading data from (.*)$/) do |record|
  sign_in_page = Signin.new(@driver)
  sign_in_page.login_with_yaml(record)
end