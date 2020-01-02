*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    wait until page contains element  //a[@href="/operation/reports"]
    click element  //a[@href="/operation/reports"]

Export Report and Requests
    wait until element is visible  //*[text()="Export"]  timeout=10
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]