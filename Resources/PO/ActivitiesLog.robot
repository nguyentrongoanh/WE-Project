*** Settings ***
Library  SeleniumLibrary
Library  robot.libraries.DateTime


*** Variables ***


*** Keywords ***
Export Activitives Log
    ${Date} =  get current date  result_format=%d/%m/%Y
    log  ${Date}
    wait until page contains element  //button[text()="Export"]
    click element  //button[text()="Export"]
    wait until page contains element  //*[text()="From"]/parent::*//input
    click element  //*[text()="From"]/parent::*//input
    Execute javascript          document.querySelector('input:read-only').removeAttribute("readonly");
    Execute Javascript          document.querySelector("input:read-only").removeAttribute("onchange");
    Execute Javascript          document.querySelector("input:read-only").setAttribute("value", "${Date}");
    sleep  3s
    click element  //*[text()="To"]/parent::*//input
    Execute Javascript          document.querySelector("input:read-only").setAttribute("value", "${Date}");
    click element  //*[text()="Submit"]
    sleep  50s
    # input text  //*[text()="From"]/parent::*//input  ${Date}

