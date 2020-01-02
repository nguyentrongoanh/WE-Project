*** Settings ***
Library  SeleniumLibrary
Library  robot.libraries.DateTime


*** Variables ***
${FROM_DATE}
${TO_DATE}

*** Keywords ***
Export Activitives Log
    # TODO Find a way to work with Date Picker more effective
    ${FROM_DATE} =  get current date  increment=- 24 hours  result_format=%d/%m/%Y
    ${TO_DATE} =  get current date  result_format=%d/%m/%Y
    log  ${FROM_DATE}
    wait until element is visible  //button[text()="Export"]
    click element  //button[text()="Export"]
    wait until element is visible  //*[text()="From Date"]/parent::*//input
    click element  //*[text()="From Date"]/parent::*//input
    press keys  None  ${FROM_DATE}+\ue007
    #wait until element is visible  //*[@title="${DATE}"]
    #click element  //*[@title="${DATE}"]
    wait until element is visible  //*[text()="To Date"]/parent::*//input
    click element  //*[text()="To Date"]/parent::*//input
    press keys  None  ${TO_DATE}+\ue007
    #wait until element is visible  //*[@title="${DATE}"]
    #click element  //*[@title="${DATE}"]
    click element  //*[text()="Submit"]

    click element

