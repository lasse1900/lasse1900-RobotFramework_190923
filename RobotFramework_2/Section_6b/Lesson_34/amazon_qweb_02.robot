*** Settings ***
Library  QWeb

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}     chrome
${PASSWORD}    password

*** Keywords ***


*** Test Cases ***

Test case 1
    Open Browser    ${URL}    ${BROWSER}
  
    Click Element    xpath=//*[@id="gw-sign-in-button"]/span/a
    Sleep    1
    TypeText        Sign in    lauri.kyttala@gmail.com   anchor=xpath=//input[@id='ap_email']    # This works
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[2]/span[1]/span[1]/input[1]    
    Sleep    0.5
    # TypeSecret        Sign in    ${PASSWORD}         anchor=xpath=//input[@id='ap_password']    
    # TypeSecret      Password    ${PASSWORD}        anchor=xpath=//input[@id='ap_password']
    
    # # TypeText        Sign in    lauri.kyttala@gmail.com   anchor=xpath=//input[@id='ap_email']
    # Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[2]/span[1]/span[1]/input[1]
    # Sleep    4
    Close Browser
