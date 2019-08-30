*** Settings ***
Documentation  abc
Resource  ./PO/Menu.robot
Resource  ./PO/Operation.robot
Resource  ./PO/Login.robot
Resource  ./PO/ActivitiesLog.robot
Resource  ./PO/Tasks.robot

*** Variables ***


*** Keywords ***
User login successfully
    Login.Login

Navigate to Operation
    Menu.Navigate to "Operation"

Navigate to Tasks
    Tasks.Navigate to

Export Activitives Log
    ActivitiesLog.Export Activitives Log

Export General Tasks
    Tasks.Export General Tasks
