*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser