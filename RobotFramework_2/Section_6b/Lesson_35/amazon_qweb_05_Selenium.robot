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
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[7]/div[1]/div[2]/div[1]/div[2]/a[1]/div[2]/span[1]
    
    Sleep    5
