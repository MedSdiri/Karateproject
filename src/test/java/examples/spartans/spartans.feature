Feature: Spartans App Feature testing
# Use this ip address that has spartan app with no auth
# So we can just focus on writing feature file correctly
  Background:
    * url 'http://54.92.150.105:8000/'
#    * path '/api'

  Scenario: User should be able to call /api/hello to get greeting
    Given path '/api/hello'
    When method get
    Then status 200
    # checking content type header
    # use match rather than assert when you assert the part of response
    Then match header Content-Type == 'text/plain;charset=UTF-8'
    # checking the payload
    Then assert response == 'Hello from Sparta'

    Scenario: Get One Spartan and verify response
      #Sending request to /api/spartan/{id}  id 10
      Given path '/api/spartans/10'
      # Given path 'api/spartans', 10 this works and it will concatinate path with id
  When method GET
      Then status 200
      # Check Content type is application/json
  Then match header Content-Type == 'application/json'
      Then print 'Karate is awesome' + 'Hi Ha!!'
      Then print 'Karate is awesome' , 'Hi Ha!!'
      #using , instead of + will add the space between the two prints
  * print response
      #accesing the fields of json object
  * print 'ID of this spartan=',response.id
  * print 'Name of this spartan=',response.name
  * print 'Gender of this spartan=',response.gender
  * print 'Phone of this spartan=',response.phone

