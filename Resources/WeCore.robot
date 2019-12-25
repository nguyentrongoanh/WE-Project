*** Settings ***
Documentation  abc
Resource  ./PO/StaffMenu/Menu.robot
Resource  ./PO/StaffMenu/Operation.robot
Resource  ./PO/StaffMenu/Login.robot
Resource  ./PO/StaffMenu/ActivitiesLog.robot
Resource  ./PO/StaffMenu/Tasks.robot
Resource  ./PO/StaffMenu/Report.robot
Resource  ./PO/StaffMenu/Assets.robot
Resource  ./PO/StaffMenu/Residents.robot
Resource  ./PO/StaffMenu/ReportAndRequests.robot
Resource  ./PO/StaffMenu/Concierge.robot
Resource  ./PO/StaffMenu/Facilities.robot
Resource  ./PO/StaffMenu/DropOff.robot
Resource  ./PO/ResidentMenu/MyHome.robot

*** Variables ***


*** Keywords ***
User login successfully
    Login.Login

# Navigation
Navigate to Operation
    Menu.Navigate to "Operation"

Navigate to Tasks
    Tasks.Navigate to

Navigate to Report
    Report.Navigate to

Navigate to Assets
    Assets.Navigate to

Navigate to Building Defects
    Assets.Navigate to Building Defects

WeCore.Navigate to Apartment Defects
    Assets.Navigate to Apartment Defects

Navigate to Residents
    Residents.Navigate to

Navigate to Report and Requests
    ReportAndRequests.Navigate to

Navigate to Concierge
    Concierge.Navigate to

Navigate to Facilities
    Facilities.Navigate to

Navigate to Drop Off & Collect
    DropOff.Navigate to

# Export files
Export Activitives Log
    ActivitiesLog.Export Activitives Log

Export General Tasks
    Tasks.Export General Tasks

Export Report
    Report.Export Report

Export Building Defects All
    Assets.Export Building Defects All

Export Building Defects "Search Item"
    Assets.Export Building Defects "Search Item"

Export Building Defects "Category"
    Assets.Export Building Defects "Category"

Export Building Defects "Submitted"
    Assets.Export Building Defects "Submitted"

Export Building Defects "In Progress"
    Assets.Export Building Defects "In Progress"

Export Building Defects "Resolved"
    Assets.Export Building Defects "Resolved"

Export Building Defects "Non Defect"
    Assets.Export Building Defects "Non Defect"

Export Apartment Defects ALL
    Assets.Export Apartment Defects ALL

Export Apartment Defects Search filter
    Assets.Export Apartment Defects Search filter

Export Apartment Defects Category
    Assets.Export Apartment Defects Category

Export Apartment Defects "Submitted"
    Assets.Export Apartment Defects "Submitted"

Export Apartment Defects "In Progress"
    Assets.Export Apartment Defects "In Progress"

Export Apartment Defects "Resolved"
    Assets.Export Apartment Defects "Resolved"

Export Apartment Defects "Non Defect"
    Assets.Export Apartment Defects "Non Defect"

Export Current Residents All
    Residents.Export Current Residents All

Export Current Residents Name
    Residents.Export Current Residents Name

Export Current Residents Floor
    Residents.Export Current Residents Floor

Export Current Residents Apartment
    Residents.Export Current Residents Apartment

Export Current Residents Invitation
    Residents.Export Current Residents Invitation

Export Current Residents Immobility
    Residents.Export Current Residents Immobility

Export Incoming Residents All
    Residents.Export Incoming Residents All

Export Incoming Resident Apartment
    Residents.Export Incoming Residents Apartment

Export Resident History
    Residents.Export Resident History

Export Report and Requests
    ReportAndRequests.Export Report and Requests

Export Facility Booking
    Facilities.Export Facilities Bookings

Export Incoming Items
    DropOff.Export Incoming Items

Export Outgoing Items
    DropOff.Export Outgoing Items

# RESIDSENT
Navigate to My Home
    MyHome.Navigate to