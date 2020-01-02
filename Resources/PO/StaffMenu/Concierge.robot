*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    # wait until page contains element  //*[@class="icon we-icon-concierge"]
    sleep  5s
    click element  //*[@class="icon we-icon-concierge"]
