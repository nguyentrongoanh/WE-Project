*** Settings ***
Library  ImapLibrary
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot

#Test Setup  Begin Web Test
#Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL}  about:blank

*** Test Cases ***
Email Verification
    Open Mailbox  host=imap.gmail.com  user=ntrongoanh01@gmail.com  password=oanhmai210790
    wait for email
    delete all emails
    Close Mailbox




*** Keywords ***

