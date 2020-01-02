*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    wait until page contains element  //a[@href="/concierge/facility-booking"]
    click element  //a[@href="/concierge/facility-booking"]

Export Facilities Bookings
     wait until element is visible  //*[text()="Export"]  timeout=100
     click element  //*[text()="Export"]
     wait until element is visible  //*[@class="ant-btn ant-btn-primary"]  timeout=100
     click element  //*[@class="ant-btn ant-btn-primary"]
