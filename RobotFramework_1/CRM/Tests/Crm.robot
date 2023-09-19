*** Settings ***
Documentation    This is some basic info about the whole suite 
Library    SeleniumLibrary    #timeout=0:00:10

# Run the script
# robot -d Results Tests/Crm.robot 

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]        This is some basic information about the test 
    [Tags]                1006    Smoke    Contacts

    # Initialize Selenium
    Set Selenium Speed    .2s
    Set Selenium Timeout   5s

    # Open the browser
    Log                    Starting the test case
    Open Browser           https://automationplayground.com/crm/    chrome

    # Resize browser window
    # Set Window Position    x=341    y=169
    Set Window Size        width=1935    height=1090

    Page Should Contain    Customers Are Priority One!

    # Click Link            xpath=//*[@id="SignIn"]
    Click Link             name=sign-in-link
    Page Should Contain    Login

    Input Text            id=email-id    admin@robotframeworktutorial.com
    Input Text            id=password    qwe
    Click Button          id=submit-id
    Page Should Contain    Our Happy Customers
    
    Click link            id=new-customer
    Page Should Contain    Add Customer
    Input Text            id=EmailAddress    johndoe@gmail.com
    Input Text            id=FirstName    John
    Input Text            id=LastName    Doe
    Input Text            id=City    Dallas
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button    gender    male
    Select Checkbox        name=promos-name
    Click Button           Submit
    Page Should Contain    Success! New customer added.

    Sleep    3s
    Close Browser   

*** Keywords ***
    
