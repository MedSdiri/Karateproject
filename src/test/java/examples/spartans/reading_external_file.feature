Feature: I want to read external files
  Scenario: reading json file in same folder
    # we can read ony file with built in read method
  * def fileText = read('singleSpartan.json')
    * print fileText