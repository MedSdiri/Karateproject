Feature: Spartan CRUD Operation feature
  Background: 
    * url 'http://54.92.150.105:8000/'

    Scenario: Add One Spartan
      # POST /api/spartans
      #Variable intro, using def keyword
  * def myNumber = 217
  * def myName = 'Ahmed Sdiri'
  * def myDio = {name : 'dio', age : 3}
      * print 'My number value is = ', myNumber
      * print 'My Name value is = ', myName
      * print 'My Dio value is', myDio
      # Storing multi Line String as is using triple quotations
      * def mySpartan =
      """
      {
      "gander" : "String",
      "name" : "String",
      "phone" : 0
    }
      """
      * print 'My spartan value is ', mySpartan

      Scenario: Add One Spartan
        * def mypostPayload =
        """
        {
        "name": "Mustafa",
        "gender" : "Male",
        "phone" : 1234567890
        }
        """
        Given path '/api/spartans'
        And header Content-Type = 'application/json'
        # this is how we provide a body using request keyword
  And request mypostPayload
        When method POST
        Then status 201
        And print response
        # Do your verification here for response fields

  # Now continue to send Get request using same id generated above
  * def newId = response.data.id
        Given path '/api/spartans', newId
        When method GET
        Then status 200