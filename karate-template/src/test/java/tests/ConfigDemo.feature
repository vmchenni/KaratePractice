Feature: Config Demo
  Background:
    * url baseURL
    * header Accept = 'application/json'

  Scenario: Config Demo
    Given print name

    #Simple Get Request
  Scenario: Get Demo 1
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
