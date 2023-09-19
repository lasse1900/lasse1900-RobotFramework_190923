*** Settings ***
Library  SeleniumLibrary
# Library  QWeb

*** Variables ***
${URL}    https://www.is.fi/
${BROWSER}    chrome

*** Keywords ***


*** Test Cases ***

Test case 1
    Open Browser    ${URL}    ${BROWSER}
  
    # Click Link    xpath=//*[@id="header"]/div/nav/div/ul/li[6]/a
    # Click Button    xpath=//*[@id="notice"]/div[3]/div/div[1]/button
    Sleep    1
    Close Browser

Test case 2
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    Sleep    1
    Close Browser
    