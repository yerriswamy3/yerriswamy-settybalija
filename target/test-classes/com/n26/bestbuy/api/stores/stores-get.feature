@regression
Feature: Verify Health Check Endpoint

  Background: 
    * url baseURL
    * path 'stores'

  Scenario: Get the stores in MN state
    Given param state = 'MN'
    When method get
    Then status 200

  Scenario: Get the stores that sell apple products
    Given param service.name = 'Apple Shop'
    When method get
    Then status 200

  Scenario: Get the stores around 90210 pin
    Given param service.name = 'Windows Store'
		Given param near = 90210 
    When method get
    Then status 200
