Feature: We want to be able to call another feature
  Scenario: Calling top secret feature
    * print 'doing some work here'
    * def result =  call read('reUsable.feature')
    #* print result
    * print result.secret1
    * print result.secret2