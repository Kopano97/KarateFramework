@setup
Feature: Driver Setup

  # Background section to handle driver setup automatically
  Background: Driver Set Up
    * print desiredConfig.type
    * configure driver = {type: '#(desiredConfig.type)', headless: '#(desiredConfig.headless)', start: true, httpConfig: { readTimeout: 120000 } }
    * configure retry = {count : 8, Interval: 30000}

  # Function to initialize the driver
  Scenario: Initialize driver
    Given driver 'https://subaru-qa.nerdw.com/'
    And driver.maximize()


#  # Function to close the driver, if needed
#  Scenario: close driver
#    * driver.quit()
