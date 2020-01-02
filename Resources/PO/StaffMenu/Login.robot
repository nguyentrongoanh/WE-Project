*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Login
    go to   ${URL}
    input text  //*[@name="email"]  ${USER_EMAIL}
    input text  //*[@name="password"]  ${PASSWORD}
    click button  //button[text()="Login"]
    sleep  2s

