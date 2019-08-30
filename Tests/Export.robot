*** Settings ***
Documentation  Export files then check email is sent to user
Library  ImapLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/WeCore.robot
Resource  ../Resources/Emails.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d result tests/Export.robot
# robot -d result -t "Should be able to export General Tasks" tests/Export.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://patrickhouse.wewumbo.io/login
${USER_EMAIL} =  ntrongoanh01@gmail.com
${PASSWORD} =  abc123
${EMAIL_SUBJECT}

*** Test Cases ***
Should be able to export Activities Log
    [Documentation]  """Export Activities Report in Operation -> Activities Log, day = 28/08/2019"""
    [Tags]  test1
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Export Activitives Log

Should be able to export General Tasks
    [Documentation]  Export General Task
    [Tags]  test2
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Tasks
    WeCore.Export General Tasks
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - General Tasks export

