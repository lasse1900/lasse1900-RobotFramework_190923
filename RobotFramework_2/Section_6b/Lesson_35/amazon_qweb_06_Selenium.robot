*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome
*** Keywords ***

*** Test Cases ***
Test case 1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    Sleep    1
    Click Element    xpath=//input[@id='nav-search-submit-button']  # either one
    Click Element    css=#nav-search-submit-button
    
    Sleep    5
