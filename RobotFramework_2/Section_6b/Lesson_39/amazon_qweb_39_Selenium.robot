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
    Click Element    xpath=//input[@id='nav-search-submit-button']

    # CSS
    # Click Element    css=input[type*='Submit']
    # Click Element    css=input[type*='ubmi']    # the carret * sign
    
    Sleep    1
