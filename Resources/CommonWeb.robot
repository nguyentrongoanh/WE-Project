*** Settings ***
Library  SeleniumLibrary
Library  ../Libraries/Email.py
Library  ImapLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser  about:blank   ${BROWSER}
    maximize browser window

End Web Test
    close all browsers

Open Email Test
    connect to email  ntrongoanh01@gmail.com  abc123


Close Email Test
    close email test