*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Navigate to
    wait until page contains element  //a[@href="/operation/tasks/reports"]
    click element  //a[@href="/operation/tasks/reports"]

Export Report
     wait until element is visible  //button[text()="Export"]
     click element  //button[text()="Export"]
     wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
     click element  //*[@class="ant-btn ant-btn-primary"]