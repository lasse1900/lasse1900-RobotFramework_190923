*** Settings ***
# Library  SeleniumLibrary
Library  QWeb

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome

*** Keywords ***


*** Test Cases ***

Test case 1
    Open Browser    ${URL}    ${BROWSER}
  
    Click Element   xpath=//*[@id="nav-xshop"]/a[5]   
    Sleep    1

    Close Browser
