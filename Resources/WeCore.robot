*** Settings ***
Documentation  abc
Resource  ./PO/Menu.robot
Resource  ./PO/Operation.robot
Resource  ./PO/Login.robot
Resource  ./PO/ActivitiesLog.robot

*** Variables ***


*** Keywords ***
User login successfully
    Login.Login

Navigate to Operation
    Menu.Navigate to "Operation"

Click Export Button
    ActivitiesLog.Click "Export" button
