*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    wait until page contains element  //a[@href="/concierge/drop-and-collect"]
    click element  //a[@href="/concierge/drop-and-collect"]

Export Incoming Items
    wait until element is visible  //div[text()="Incoming items"]/parent::*//button[text()="Export"]  timeout=10
    click element  //div[text()="Incoming items"]/parent::*//button[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Outgoing Items
    wait until element is visible  //div[text()="Outgoing items"]/parent::*//button[text()="Export"]  timeout=10
    click element  //div[text()="Outgoing items"]/parent::*//button[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]