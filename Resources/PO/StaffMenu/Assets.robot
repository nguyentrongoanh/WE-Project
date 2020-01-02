*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ITEM} =  Television
${APT_NUMBER} =  00201


*** Keywords ***
Navigate to
    click link  //a[@href="/operation/assets"]

Navigate to Building Defects
    click link  //a[@href="/operation/assets/building-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    sleep  2s

Navigate to Apartment Defects
    click link  //a[@href="/operation/assets/apartment-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    sleep  2s

Export Building Defects ALL
    click link  //a[@href="/operation/assets/building-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    # wait until element is visible  //*[text()="Export success. Please check your email."]  10s

Export Building Defects "Search Item"
    click link  //a[@href="/operation/assets/building-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    input text  //*[@placeholder="Search Item Name"]  ${ITEM}
    sleep  2s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    # wait until element is visible  //*[text()="Export success. Please check your email."]  10s

Export Building Defects "Category"
    click link  //a[@href="/operation/assets/building-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    sleep  5s
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[2]/div/div[1]/div/div[1]
    click element  //*[text()="Electrical"]
    sleep  2s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Building Defects "Submitted"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="Submitted"]
    sleep  2s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Building Defects "In Progress"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="In Progress"]
    sleep  2s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Building Defects "Resolved"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="Resolved"]
    sleep  2s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Building Defects "Non Defect"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="Non Defect"]
    sleep  2s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Apartment Defects ALL
    click link  //a[@href="/operation/assets/apartment-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    capture page screenshot


Export Apartment Defects Search filter
    click link  //a[@href="/operation/assets/apartment-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    input text  //*[@placeholder="Search Apt. No., Item Name, Manufacturer, Model "]  ${APT_NUMBER}
    sleep  3s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    capture page screenshot

Export Apartment Defects Category
    click link  //a[@href="/operation/assets/apartment-defect"]
    wait until element is visible  //*[text()="Export"]  timeout=10
    sleep  3s
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[2]/div/div[1]/div/div[1]
    click element  //*[text()="Appliances"]
    sleep  3s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]
    capture page screenshot

Export Apartment Defects "Submitted"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="Submitted"]
    sleep  3s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Apartment Defects "In Progress"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="In Progress"]
    sleep  3s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Apartment Defects "Resolved"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="Resolved"]
    sleep  3s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]

Export Apartment Defects "Non Defect"
    click element  //*[@id="app"]/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div/div[1]/div/div[1]
    click element  //*[text()="Non Defect"]
    sleep  3s
    click element  //*[text()="Export"]
    wait until element is visible  //*[@class="ant-btn ant-btn-primary"]
    click element  //*[@class="ant-btn ant-btn-primary"]