*** Settings ***
Library  ImapLibrary
Library  SeleniumLibrary
Library  ../Libraries/Email.py
Resource  ../Resources/CommonWeb.robot

#Test Setup
#Test Teardown

#robot -d result tests/Draft.robot

*** Variables ***
${BROWSER} =  chrome
${URL}  about:blank


*** Test Cases ***
Email Verification
    open mailbox  host=imap.gmail.com   user=ntrongoanh01@gmail.com   password=oanhmai210790
    ImapLibrary.Wait For Email
    delete all emails
    close mailbox



*** Keywords ***

