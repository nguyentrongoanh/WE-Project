*** Settings ***
Library  SeleniumLibrary
Library  robot.libraries.DateTime


*** Variables ***


*** Keywords ***
Navigate to
    wait until element is visible  //*[@class="icon we-icon-my-home"]  timeout=10
    click link  //a[@href="/my-home"]
    wait until element is visible  //a[@href="/my-home/move-out"]