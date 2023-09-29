*** Settings ***

Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome
# ${BROWSER}    edge
*** Keywords ***

*** Test Cases ***
Test case 1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    Sleep    1
    # Xpath
    # Click Element    xpath=//input[@id='nav-search-submit-button'] 
    # Click Element    xpath=//input[@type="submit"]
    # Click Element    xpath=//input[ends-with(@type,"Submit")]

    # CSS
    # Click Element    css=#nav-search-submit-button # OBS ---> Requires Xpath 2.0 - limited support !!!!!!!!!

    Click Element    css=input[type$='Submit']
    Click Element    css=input[type$='mit']    # the carret $ sign
    
    Sleep    1
