*** Settings ***
Library  QWeb

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome
*** Keywords ***

*** Test Cases ***
Test case 1
    Open Browser    ${URL}    ${BROWSER}
    Sleep    1
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/h2[1]
    ClickText    See more    anchor=Electronics   css=False
    Sleep    4
    Close Browser
    