*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to
    # wait until element is visible  //a[@href="/operation"] timeout=30
    sleep  3s
    click element  //a[@href="/operation"]
