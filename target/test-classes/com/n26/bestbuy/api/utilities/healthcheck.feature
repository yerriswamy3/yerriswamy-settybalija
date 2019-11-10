
@regression
Feature: Verify Health Check Endpoint
  Background:
    * url baseURL
    
  Scenario: Get the healthcheck 
  	Given path 'healthcheck'
		When method get
		Then status 200
  
  
 Scenario: Get the healthcheck 
  	Given path 'healthcheck1'
		When method get
		Then status 404

 Scenario: Get the healthcheck 
  	Given path 'healthcheck'
  	When request {}
		When method post
		Then status 404
