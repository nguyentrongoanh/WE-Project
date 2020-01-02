*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to "Operation"
    sleep  10s
    click element  //*[@class="icon we-icon-operations"]
