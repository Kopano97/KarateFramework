@test
Feature: Explore more on sliding banner

  Background: : Driver Start
    * call read("driverSetUp.feature")

  Scenario: Outback Explore more
    And click("/html//div[@id='app']//section[@class='MuiBox-root css-7zdaix']//div[@class='swiper-wrapper']/div[2]//a[@href='/showroom/subaru/outback']")
    * def expectedText = 'Discover the all-new Subaru Outback - The Ultimate car'
    * waitFor("//*[@id='app']/div/main/section[1]/div/div[2]/div/h2")
    * match text("//*[@id='app']/div/main/section[1]/div/div[2]/div/h2") == expectedText
    * screenshot()
