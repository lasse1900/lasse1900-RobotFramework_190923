*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/ImbApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d Logs Tests
# robot -d results tests/my_test.robot
# robot -d results -i mytest tests/my_test.robot
# robot -d results -i landing tests/IMB_Tests.robot
# robot -d results -i landing -v BROWSER:chrome -v ENVIRONMENT:qa tests/IMB_Tests.robot

*** Variables ***
${ENVIRONMENT} =  dev
${BROWSER} =  chrome
# Create a Dictionary with &{URLs} ...
&{URL}  dev=http://www.amazon.com  qa=https://www.is.fi/  stage=http://stage.internetmillionaireblueprint.com  prod=http://www.amazon.com
&{CUSTOMER_USER}  FirstName=Bryan  LastName=Lamb  Dob=1/1/1900  Email=bryan@robotframework.com  Password=MyPassword!

*** Test Cases ***
Should be able to view landing page
    [Tags]  landing
    ImbApp.Navigate to Landing Page
    Sleep  5s

# Should be able to register for new account
#     [Tags]  register
#     ImbApp.Navigate to Landing Page
#     Sleep  5s
#     ImbApp.Create New Account  ${CUSTOMER_USER}
