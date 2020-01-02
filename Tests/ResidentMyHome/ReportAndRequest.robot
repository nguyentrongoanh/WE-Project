*** Settings ***
Resource  ../../Resources/CommonWeb.robot
Resource  ../../Resources/WeCore.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d result -t "Check the filter option of report page works normally" tests/ReportAndRequest.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://patrickhouse.wewumbo.io/login
${USER_EMAIL} =  ntrongoanh02@gmail.com
${PASSWORD} =  abc123
${NUMBER}

*** Test Cases ***
Resident creates Report successfully
    [Documentation]  Resident creates Report and Request in My Home > Report and Request > click on NEW REPORT button
    [Tags]  Report&Request, create
    WeCore.User login successfully
    WeCore.Navigate to My Home
    click element  //a[@href="/my-home/report-request"]
    wait until element is visible  //*[text()="New Report"]
    click element  //*[text()="New Report"]
    wait until element is visible  //*[@name="SUBJECT"]
    input text  //*[@name="SUBJECT"]  AutoTest001
    press keys  None  \ue004  # Not able to locate Category field, use press keys to press TAB from at Subject field
    press keys  None  M  # Press M to show the Maintenance option in drop down list
    sleep  2s  # Wait for dropdown list displays
    press keys  None  \ue007  # Press enter to select Maintenance
    press keys  None  \ue004+First  # Press TAB to Floor field
    press keys  None  \ue007  # Press enter to select Maintenance
    press keys  None  \ue004+Lift  # Press TAB to Location field, input text, press enter
    press keys  None  \ue004+Additional_Information  # Press TAB to Additional info, input text
    choose file  //*[@name="FILES"]  C://Users/Oanh/Desktop/Image01.PNG
    click element  //*[text()="Save"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    wait until element is visible  //*[text()="Submitted"]  30s
    sleep  10s

Resident edits Report successfully
    [Documentation]  Resident edits Report and Request after creating
    [Tags]  Report&Request, edit
    WeCore.User login successfully
    WeCore.Navigate to My Home
    click element  //a[@href="/my-home/report-request"]
    wait until element is visible  //*[text()="New Report"]
    click element  //*[text()="Filter Options"]
    sleep  2s
    input text  //*[@placeholder="Search Subject"]  AutoTest001
    click element  //*[text()="Filter"]
    wait until element is visible  //*[text()="AutoTest001"]
    click element  //*[text()="AutoTest001"]
    wait until element is visible  //*[text()="Edit"]
    click element  //*[text()="Edit"]
    wait until element is visible  //*[@name="SUBJECT"]
    clear element text  //*[@name="SUBJECT"]
    input text  //*[@name="SUBJECT"]  AutoTest001Editted
    press keys  None  \ue004  # Not able to locate Category field, use press keys to press TAB from at Subject field
    press keys  None  Ex  # Press M to show the Maintenance option in drop down list
    sleep  2s  # Wait for dropdown list displays
    press keys  None  \ue007  # Press enter to select Category
    press keys  None  \ue004+Second  # Press TAB to Floor field
    press keys  None  \ue007  # Press enter to select Maintenance
    press keys  None  \ue004+Hall  # Press TAB to Location field, input text, press enter
    press keys  None  \ue004+More_Additional_Information  # Press TAB to Additional info, input text
    choose file  //*[@name="FILES"]  C://Users/Oanh/Desktop/Image02.PNG
    click element  //*[text()="Save"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    wait until element is visible  //*[text()="Submitted"]  30s
    sleep  10s

Check the filter option of report page works normally
    [Documentation]  Filters work correctly, all options
    [Tags]  Report&Request, filter
    WeCore.User login successfully
    WeCore.Navigate to My Home
    click element  //a[@href="/my-home/report-request"]
    wait until element is visible  //*[text()="New Report"]
    click element  //*[text()="Filter Options"]
    sleep  2s
    input text  //*[@placeholder="Search Subject"]  AutoTest001
    click element  //*[text()="Filter"]
    input text  //*[@placeholder="Search Subject"]  AutoTest001
    press keys  None  \ue004+M+\ue007  # input Category
    click element  //*[@placeholder="From"]
    press keys  None  14/11/2019  # input desired date in From field
    click element  //*[@placeholder="To"]
    press keys  None  14/11/2019   # input desired date in To field
    #click element  //*[text()="Status"]/parent::*//input
    input text  //*[text()="Status"]/parent::*//input  Submitted
    press keys  None  \ue007
    click element  //*[text()="Filter"]
    wait until element is visible  //*[text()="AutoTest001"]
