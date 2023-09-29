*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_TEXT} =  Welcome!
${URL}  http://dev.internetmillionaireblueprint.com  

*** Keywords ***
Navigate To
    Open Browser  ${URL}

Verify Page Loaded
    wait until page contains  ${LANDING_TEXT}