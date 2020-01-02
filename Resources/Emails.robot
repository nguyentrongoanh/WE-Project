*** Settings ***
Library  SeleniumLibrary
# Library  ImapLibrary
Library  ../Libraries/Email.py

*** Variables ***
${EMAIL_SUBJECT} =  ""

*** Keywords ***
Open Email
    connect to email  ntrongoanh01@gmail.com    oanhmai210790

Close Email
    close connection

Delete all Emails
    delete all email

Verified Email Subject
    Email.Wait For Email
    get email subject
    return from keyword  ${EMAIL_SUBJECT}