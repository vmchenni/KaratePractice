Feature: POST API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response.json")

  Scenario: POST Demo 1
    Given url 'https://reqres.in/api/users'
    And request '{"name": "Vishwanath","job": "IT Consultant"}'
    When method POST
    Then status 201
    And print response

    # Post with background
  Scenario: POST Demo Post with background
    Given path '/users'
    And request '{"name": "Vishwanath","job": "CTO"}'
    When method POST
    Then status 201
    And print response

       # Post with background
  Scenario: POST Demo Post with Assertion
    Given path '/users'
    And request '{"name": "Vishwanath","job": "CTO"}'
    When method POST
    Then status 201
    And print response
    And match response == {"id": "#string","createdAt": "#ignore"}

           # Read Reponse From FIle
  Scenario: POST Demo Read Reponse From FIle
    Given path '/users'
    And request '{"name": "Vishwanath","job": "CTO"}'
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput
#    Alternate
    And match $ == expectedOutput

    # Read request From FIle
  Scenario: POST Demo Read Reponse From FIle
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filepath = projectPath+'/src/test/java/data/request.json'
    And print filepath
    And def requestBody = filepath
    And request requestBody
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput
#    Alternate
    And match $ == expectedOutput

     # Modify Request File
  Scenario: Modify Request File
    Given path '/users'
    And def requestBody = read("request.json")
    And set requestBody.job = 'CIO'
    And request  requestBody
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput
#    Alternate
    And match $ == expectedOutpu



