Feature: I should be able to use all java stuff here in scenario
  Scenario: Using Calculator from utility package
    * def myCalculator = Java.type('utility.Calculator')
    * def result = myCalculator.add2Numbers(10,20)
    * print 'result =', result


    Scenario: Trying out the spartan util with random map body
      * def spartan_util = Java.type('utility.Spartan_Util')
      * def payload = spartan_util.getRandomSpartanMap()
      * print payload
      #Sending POST request using random payload
      * url 'http://54.92.150.105:8000/'
      Given path '/api/spartans'
      And header Content-Type = 'application/json'
      And request payload
      When method POST
      Then status 201
      And print response