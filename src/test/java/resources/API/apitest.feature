@test
Feature: Sample API Test

  Background:
    * url desiredConfig.baseUrl + '/posts/1'

  Scenario: Verify API Status
    When method GET
    Then status 200
    And match response.id == 1
