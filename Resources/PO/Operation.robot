*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    wait until page contains element  //a[@href="/operation"]
    click element  //a[@href="/operation"]
