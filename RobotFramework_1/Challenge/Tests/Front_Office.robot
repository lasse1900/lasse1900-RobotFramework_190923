*** Settings ***
Documentation    Some docs concerning the whole suite
Resource    ../Resources/FrontOfficeApp.robot
Resource    ../Resources/CommonWeb.robot
Task Setup    Begin Web Test
Test Teardown    End Web Test

# run script
# robot -d Results Tests/Front_Office.robot 

*** Variables ***
${BROWSER} =     edge
${URL} =    https://automationplayground.com/front-office 


*** Test Cases ***
Should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing Page 
    FrontOfficeApp.Go to "Team" Page 

"Team" page should match requirements
    [Documentation]    This is test 2
    [Tags]    test2
    FrontOfficeApp.Go to Landing Page 
    FrontOfficeApp.Go to "Team" Page 
    FrontOfficeApp.Validate to "Team" Page

