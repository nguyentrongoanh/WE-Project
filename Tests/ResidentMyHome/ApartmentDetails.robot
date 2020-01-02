*** Settings ***
Resource  ../../Resources/CommonWeb.robot
Resource  ../../Resources/WeCore.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d result -t "Apartment layout page displays image and resident can download it" tests/ApartmentDetails.robot.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://patrickhouse.wewumbo.io/login
${USER_EMAIL} =  ntrongoanh02@gmail.com
${PASSWORD} =  abc123
${NUMBER}

*** Test Cases ***
Apartment layout page displays image and resident can download it
    [Documentation]  Able to download apt. images
    [Tags]  layout, image

    WeCore.User login successfully
    WeCore.Navigate to My Home
    click element  //a[@href="/my-home/apartment"]
    wait until element is visible  //*[@src="https://s3-ap-southeast-2.amazonaws.com/general.upload.for.app/00_BM/Floor+plans/spencer/Floor_plans_Spencer_Melbourne_L2_Apt00202.jpg"]


