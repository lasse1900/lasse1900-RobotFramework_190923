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
    Sleep    5
    ClickText    Home   anchor=Refresh your space   css=False
    Sleep    5
    Close Browser
    