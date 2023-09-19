*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =    xpath=//*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Verify Page Loaded
    SeleniumLibrary.Wait Until Page Contains Element    ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${Element text} =  SeleniumLibrary.Get Text    ${TEAM_HEADER_LABEL}
    Should Be Equal As Strings    ${Element text}    Our Amazing Team  ignore_case=${True}
