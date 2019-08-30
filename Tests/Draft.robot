*** Settings ***
# Library  ImapLibrary
Library  SeleniumLibrary
Library  ../Libraries/Email.py
Resource  ../Resources/CommonWeb.robot
Library  robot.libraries.DateTime

#Test Setup
#Test Teardown

#robot -d result tests/Draft.robot

*** Variables ***
${BROWSER} =  chrome
${URL}  about:blank
${EMAIL_SUBJECT}

*** Test Cases ***
Get current date
        ${Date} =  get current date  increment=02:30:00
        log  ${Date}


