*** Settings ***
# Library  ImapLibrary
Library  SeleniumLibrary
Library  ../Libraries/Email.py
Resource  ../Resources/CommonWeb.robot
Library  robot.libraries.DateTime

Test Setup  Begin Web Test
#Test Teardown  End Web Test

# robot -d result tests/Export.robot

#robot -d result tests/Draft.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://patrickhouse.wewumbo.io/login
${USER_EMAIL} =  ntrongoanh01@gmail.com
${PASSWORD} =  abc123
${EMAIL_SUBJECT}

*** Test Cases ***
clear element text
    go to   ${URL}
    input text  //*[@name="email"]  ${USER_EMAIL}
    input text  //*[@name="password"]  ${PASSWORD}
    clear element text  //*[@name="email"]



