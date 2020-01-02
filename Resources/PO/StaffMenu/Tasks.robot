*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    click link  //a[@href="/operation/tasks"]

Export General Tasks
    click link  //a[@href="/operation/tasks/general"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    # wait until element is visible  //*[text()="Export success. Please check your email."]  10s

    press keys