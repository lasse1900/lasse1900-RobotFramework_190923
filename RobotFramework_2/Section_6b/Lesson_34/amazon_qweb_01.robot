*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome

*** Keywords ***


*** Test Cases ***

Test case 1
    Open Browser    ${URL}    ${BROWSER}
  
    Click Element    xpath=//*[@id="gw-sign-in-button"]/span/a
    Sleep    1
    Input Text        xpath=//input[@id='ap_email']    lauri.kyttala@gmail.com
    Click Button    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[2]/span[1]/span[1]/input[1]
    Sleep    4
    Close Browser
