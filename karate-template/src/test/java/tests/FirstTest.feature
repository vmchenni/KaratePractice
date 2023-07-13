Feature: Sample API Test
  Scenario: Test A Sample Get API
  Given url 'https://reqres.in/api/users?page=2'
  When method GET
  Then status 200