@regression
Feature: Verify Health Check Endpoint

  Background: 
    * url baseURL

  Scenario: Get the products with only name and description
    Given path 'products'
    And param $select[] = 'name'
    And param $select[] = 'description'
    When method get
    Then status 200

  Scenario: Get the products with only name and description
    Given path 'products'
    Given param category.name = 'TVs'
    Given param price[$gt] = '500'
    Given param price[$lt] = '800'
    Given param shipping[$eq] = '0'
    When method get
    Then status 200

  Scenario: Get the healthcheck
    Given path 'products'
    Given param $sort[price] = '-1'
    When method get
    Then status 200
