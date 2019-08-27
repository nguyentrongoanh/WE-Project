*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Login
    go to   ${URL}
    input text  //*[@id="app"]/div[2]/div[2]/form/div[1]/div/span/input  ${USER_EMAIL}
    input text  //*[@id="app"]/div[2]/div[2]/form/div[2]/div/span/input  ${PASSWORD}
    click button  //*[@id="app"]/div[2]/div[2]/form/button
    wait until page contains element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div/div[1]/div/div[1]
