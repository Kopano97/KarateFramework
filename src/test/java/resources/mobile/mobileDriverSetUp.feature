@setup
Feature:

  Background: Setup Driver and Config
    * def platform = desiredConfig.type
    * configure driver = {type: '#(platform)', webDriverPath: "/", start: false, httpConfig: { readTimeout: 120000 } }
    * def locators = read('classpath:/locators.json')[platform]
    * configure retry = {count : 90, Interval: 30000}

    Scenario:
      # Launch app
      Given driver { webDriverSession: { capabilities: "#(desiredConfig)" } }
