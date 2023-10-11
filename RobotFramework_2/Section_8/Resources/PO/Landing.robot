*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_TEXT} =  ""
${string1}    dev
${string2}    qa
${LANDING_TEXT_1} =  amazon
${LANDING_TEXT_2} =  etusivu
${ENVIRONMENT} =  ${URL.${ENVIRONMENT}}

*** Keywords ***
Keyword 1
    Log  ${LANDING_TEXT}
Navigate To
    Go To  ${URL.${ENVIRONMENT}}
    Log    The result is: ${ENVIRONMENT}
    Run Keyword If  '${URL.${ENVIRONMENT}}' == '${string1}'    Set Variable    ${LANDING_TEXT}    ${LANDING_TEXT_1}
    ...    ELSE IF  '${URL.${ENVIRONMENT}}' == '${string2}'    Set Variable    ${LANDING_TEXT}    etusivu   # either way, as a constant or string

Verify Page Loaded
    wait until page contains  ${LANDING_TEXT}