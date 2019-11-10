
@regression
Feature: Verify Health Check Endpoint
  Background:
    * url baseURL
    Given path 'services'
  Scenario: Get the services  
  	
		When method get
		Then status 200
  
  
 Scenario: Get the services  
		When method get
		Given param $limit = 15
		Then status 200


