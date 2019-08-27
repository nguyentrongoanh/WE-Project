*** Settings ***
Documentation  Export files then check email is sent to user
Library  ImapLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/WeCore.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d result tests/Export.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://patrickhouse.wewumbo.io/login
${USER_EMAIL} =  hcm.head@wumbo.io
${PASSWORD} =  wumbo@123!

*** Test Cases ***
Should be able to export Activities Log
    [Documentation]  This is test 2
    [Tags]  test2
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Click Export Button
    ImapLibrary.open mailbox
