
@regression
Feature: Verify Health Check Endpoint
  Background:
    * url baseURL
    
  Scenario: Get the Categories with filters
  	Given path 'categories'
  	And param name[$like] = '*Mobile*'
		When method get
		Then status 200
		* print response
 
   Scenario: Get the Categories with name
  	Given path 'categories'
  	And param $select[] = 'name'
		When method get
		Then status 500
		* print response
	
	  Scenario: Get the Categories which has mobile
  	Given path 'categories'
  	And param name[$like] = '*Mobile*'
		When method get
		Then status 200
		* print response
