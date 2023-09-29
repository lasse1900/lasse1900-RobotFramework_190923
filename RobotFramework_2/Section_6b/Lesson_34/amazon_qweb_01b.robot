*** Settings ***
Library  QWeb

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome

*** Keywords ***


*** Test Cases ***

Test case 1
    Open Browser    ${URL}    ${BROWSER}
  
    # Click Element    xpath=//*[@id="CardInstanceiDVo1NGHr3LqAEfwhtbqUA"]/div[3]/a
    ClickText    See all deals
    ClickText    See more
    Sleep    4

    Close Browser
