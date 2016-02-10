Feature: Flight Finder Page

#  Background:
#    Given I open the Website in browser
#    And I login loading data from record1

  Scenario Outline: Complete the Flight finder page
    Given I open the Website in browser
    And I login loading data from <record>
    And Flight Finder page is displayed
    When I complete the Flight information using the <record>
    Then Select Flights page is displayed

    Examples:
    |record |
    |record1|
    |record2|
