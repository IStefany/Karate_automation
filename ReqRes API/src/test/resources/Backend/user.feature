Feature: Service Users from ReqRes API
  As QA Automation
  I want to request some services from ReqRes API
  To validate the status code and response

  Background: consume service
    * url url

    #Scenario: Check the service Post Method

     # * def requestUser = {"name": '#(name)',"job": '#(job)'}
      #* def responsePost = read('responsePost.json')

      #Given path 'api','users'
      #And request requestUser
      #When method post
      #Then status 201
    ##  And match response == responsePost

  Scenario: request GET a User
    Given path 'api','users','7'
    When method get
    Then status 200
    And assert response.data.first_name == "Michael"

  Scenario: service GET Users List
    Given path 'api','users'
    When method get
    Then status 200
    And match response.page == 1
    And match response.data[0].first_name == "George"

  Scenario: Check the request Post Method - Register Successful

    * def requestUser = {"email": '#(email)',"password": '#(password)'}
    * def responsePost = read('responsePost.json')

    Given path 'api','register'
    And request requestUser
    When method post
    Then status 200
    And match response.id == 4

  Scenario: Check the request Post Method - Create User

    * def requestUser = {"id": '#(id)',"email": '#(email2)', "first_name": '#(first_name)', "last_name": '#(last_name)'}
    * def responsePost = read('responsePost.json')

    Given path 'api','users'
    And request requestUser
    When method post
    Then status 201
    And match response.first_name == "Ivette"

  Scenario: Check the request Put Method - Update an User Successful

    * def requestUser = {"name": '#(name)',"job": '#(job)'}
    * def responsePost = read('responsePost.json')

    Given path 'api','users','2'
    And request requestUser
    When method put
    Then status 200

  Scenario: Check the request Put Method - Update a Resource Successful

    Given path 'api','resource','2'
    When method put
    Then status 200

  Scenario: Check the request Delete Method - Delete an User Successful

    Given path 'api','users','7'
    When method delete
    Then status 204

  Scenario: Check the request Delete Method - Delete an User Unsuccessfully

    Given path 'api','users','999'
    When method delete
    Then status 204
