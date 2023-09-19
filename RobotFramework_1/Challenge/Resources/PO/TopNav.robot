*** Settings ***
Library    SeleniumLibrary
Library    AppiumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK} =    xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Select "Team" Page
    # Click link    Team
    SeleniumLibrary.Click Element    ${TOP_NAV_TEAM_LINK}
    Sleep    3s

