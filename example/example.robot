
*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome

*** Test Cases ***
Open and Close Browser
    Open Browser    http://www.example.com    ${BROWSER}
    Close Browser
