*** Settings ***
Documentation  Export files then check email is sent to user
Library  ImapLibrary
Library  String
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
    [Documentation]  """Export Activities Report in Operation -> Update Date when running
    [Tags]  test1
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Export Activitives Log
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Activities Log export

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

Should be able to export Report
    [Documentation]  Export Report in Tasks > Report
    [Tags]  test3
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Tasks
    WeCore.Navigate to Report
    WeCore.Export Report
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Reports export

Should be able to export Building Defects All
    [Documentation]  Export Building Defects in Assets > Building Defect
    [Tags]  test4
    # set log level  debug
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Export Building Defects All
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Building Defect export

Should be able to export Building Defects Search Item filter
    [Documentation]  Export Building Defects in Assets > Building Defect > Filter 'Search Item'
    [Tags]  test5
    # set log level  debug
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Export Building Defects "Search Item"
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Building Defect export

Should be able to export Building Defects Category
    [Documentation]  Export Building Defects in Assets > Building Defect > Filter 'Category'
    [Tags]  test6
    # set log level  debug
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Export Building Defects "Category"
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Building Defect export

Should be able to export Building Defects Status Filters
    [Documentation]  Export Apartment Defects in Assets > Appartment Defect > Status
    [Tags]  test5
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Navigate to Building Defects
    WeCore.Export Building Defects "Submitted"
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    WeCore.Export Building Defects "In Progress"
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    WeCore.Export Building Defects "Resolved"
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    WeCore.Export Building Defects "Non Defect"
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Building Defect export

Should be able to export Apartment Defects ALL
    [Documentation]  Export Apartment Defects in Assets > Appartment Defect
    [Tags]  test5
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Export Apartment Defects ALL
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Apartment Defect export

Should be able to export Apartment Defects Search filter
    [Documentation]  Export Apartment Defects in Assets > Appartment Defect Filter "Search apt, Item Name, etc"
    [Tags]  test5
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Export Apartment Defects Search filter
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Apartment Defect export

Should be able to export Apartment Defects Category Filter
    [Documentation]  Export Apartment Defects in Assets > Appartment Defect Filter "Category"
    [Tags]  test5
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Export Apartment Defects Category
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Apartment Defect export

Should be able to export Apartment Defects Status Filters
    [Documentation]  Export Apartment Defects in Assets > Appartment Defect > Status
    [Tags]  test5
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Assets
    WeCore.Navigate to Apartment Defects
    WeCore.Export Apartment Defects "Submitted"
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    WeCore.Export Apartment Defects "In Progress"
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    WeCore.Export Apartment Defects "Resolved"
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    WeCore.Export Apartment Defects "Non Defect"
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Apartment Defect export

Should be able to export Current Residents
    [Documentation]  Export Current Residents in Residents > Current Residents
    [Tags]  test6
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Residents
    WeCore.Export Current Residents All
    Email.Wait For Email
    #Emails.Delete all Emails
    WeCore.Export Current Residents Name
    Email.Wait For Email
    #Emails.Delete all Emails
    WeCore.Export Current Residents Floor
    Email.Wait For Email
    #Emails.Delete all Emails
    WeCore.Export Current Residents Apartment
    Email.Wait For Email
    #Emails.Delete all Emails
    WeCore.Export Current Residents Invitation
    Email.Wait For Email
    #Emails.Delete all Emails
    WeCore.Export Current Residents Immobility
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Current Resident export

Draft
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Residents
    click link  //a[@href="/operation/residents/current-resident"]
    sleep  3s
    click element  //*[text()="All Floors"]
    scroll element into view  //*[text()="Twenty First"]
    click element  //*[text()="Twenty First"]
    click element  //*[@class="zmdi zmdi-close undefined components__ClearIcon-w2v4ak-1 dDtXbF"]
    capture page screenshot


Should be able to export Incoming Residents
    [Documentation]  Export Incoming Residents in Residents > Incoming Residents
    [Tags]  test7
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Residents
    WeCore.Export Incoming Residents All
    run keyword and continue on failure  Email.Wait For Email
    Emails.Delete all Emails
    run keyword and continue on failure  Email.Wait For Email
    WeCore.Export Incoming Resident Apartment
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Incoming Resident export

Should be able to export Resident History
    [Documentation]  Export Resident History in Residents > Resident History
    [Tags]  test8
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Residents
    WeCore.Export Resident History
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Resident History export

Should be able to export Report and Requests
    [Documentation]  Export Report and Request in Operation > Report and Request
    [Tags]  test9
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Operation
    WeCore.Navigate to Report and Requests
    WeCore.Export Report and Requests
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Report & Requests export

Should be able to export Facility Booking
    [Documentation]  Export Facilities Bookings in Concierge > Facilities
    [Tags]  test10
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Concierge
    WeCore.Navigate to Facilities
    WeCore.Export Facility Booking
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House - Facility Booking export

Should be able to export Incoming Items
    [Documentation]  Export Incoming Items in Drop Off & Collect
    [Tags]  test11
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Concierge
    WeCore.Navigate to Drop Off & Collect
    WeCore.Export Incoming Items
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}
    should be equal  ${EMAIL_SUBJECT}  Patrick House- Drop Off Incoming export

Should be able to export Outgoing Items
    [Documentation]  Export Outgoing Items in Drop Off & Collect
    [Tags]  test12
    Emails.Open Email
    Emails.Delete all Emails
    WeCore.User login successfully
    WeCore.Navigate to Concierge
    WeCore.Navigate to Drop Off & Collect
    WeCore.Export Outgoing Items
    Email.Wait For Email
    ${EMAIL_SUBJECT} =  get email subject
    log  ${EMAIL_SUBJECT}


