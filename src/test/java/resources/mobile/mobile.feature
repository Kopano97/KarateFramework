@test
Feature: Android and Flutter Mobile App UI Tests

  Scenario: Test User Input and Display
    Given call read("mobileDriverSetUp.feature")
    * driver.startRecordingScreen()
    And waitFor(locators.allowPermissionButton)
    And click(locators.allowPermissionButton)
    #add steps
    * driver.saveRecordingScreen("screenRecord.mp4",true)




