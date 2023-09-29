*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Begin Web Test
    set selenium timeout  30 seconds
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser