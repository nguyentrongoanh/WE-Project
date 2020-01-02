*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Apt} =  00102
${name} =  oanh

*** Keywords ***
Navigate to
    click link  //a[@href="/operation/residents"]

Export Current Residents All
    click link  //a[@href="/operation/residents/current-resident"]
    sleep  2s
    wait until element is visible  //*[text()="Export"]  timeout=10
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Current Residents Name
    input text  //*[@placeholder="Search by name, ..."]  ${name}
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    sleep  3s
    reload page
    sleep  2s

Export Current Residents Floor
    click element  //*[text()="All Floors"]
    sleep  5s
    scroll element into view  //*[text()="Twenty First"]
    click element  //*[text()="Twenty First"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    sleep  3s
    reload page
    sleep  2s

Export Current Residents Apartment
    click element  //*[text()="All Apartments"]
    sleep  5s
    scroll element into view  //*[text()="00205"]
    click element   //*[text()="00205"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    sleep  3s
    reload page
    sleep  2s

Export Current Residents Invitation
    click element  //*[text()="Invitation"]
    click element  //*[text()="Activated"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    sleep  3s
    reload page
    sleep  2s

Export Current Residents Immobility
    click element  //*[text()="Immobility"]
    click element  //*[text()="Yes"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Incoming Residents All
    click link  //a[@href="/operation/residents/incoming-resident"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Incoming Residents Apartment
    click element  //*[text()="All Apartments"]
    click element  //*[text()="${Apt}"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Incoming Residents Date
    click element  //*[text()="Wed"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Resident History
    click link  //a[@href="/operation/residents/resident-history"]
    wait until element is visible  //input[@placeholder="Search by Name, Email"]  timeout=60
    input text  //input[@placeholder="Search by Name, Email"]  ntrongoanh02@gmail.com
    wait until element is visible  //a[text()="Oanh Nguyen22"]  timeout=60
    click element  //a[text()="Oanh Nguyen22"]
    wait until element is visible  //*[text()="Export"]
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
