Feature: Demo Website Login

  @smoke_test
  Scenario: Validate the valid users can login successfully
    Given I open the Website in browser
    When I login with selenium username and selenium password
    Then Flight Finder page is displayed

  @regression_test
  Scenario Outline: Validate the valid users can login successfully
    Given I open the Website in browser
    When I login with <username> username and <password> password
    Then Flight Finder page is displayed

    Examples:
    | username | password |
    | selenium | selenium |
    | test     | test     |


    Scenario Outline: Validate the valid users can login successfully using YAML data source
    Given I open the Website in browser
    When I login loading data from <record>
    Then Flight Finder page is displayed

    Examples:
    | record |
    | record1 |
    | record2 |
    | record3 |