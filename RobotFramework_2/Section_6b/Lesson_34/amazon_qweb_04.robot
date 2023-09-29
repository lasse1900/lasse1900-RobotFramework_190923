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
    Click Element    xpath=/html/body/div[1]/div[1]/div[2]/div[1]/div[7]/div/div[1]/h2
    ClickText    See more    anchor=Refresh your space   css=False
    Sleep    4
    Close Browser
    