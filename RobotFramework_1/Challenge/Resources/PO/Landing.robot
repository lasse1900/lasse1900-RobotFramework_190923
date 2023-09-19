*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    mainNav
${URL} =    https://automationplayground.com/front-office 

*** Keywords ***
Navigate To
    Go To  ${URL}

Go to "Team" Page

Verify Page Loaded
    SeleniumLibrary.Wait Until Page Contains Element    ${LANDING_NAVIGATION_ELEMENT}


    