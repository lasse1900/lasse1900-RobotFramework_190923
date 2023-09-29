*** Settings ***

Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}    https://www.amazon.com
${BROWSER}    chrome
# ${BROWSER}    edge
*** Keywords ***

*** Test Cases ***
Test case 1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    Sleep    1
    # Xpath
    # Click Element    xpath=//input[@id='nav-search-submit-button'] 
    # Click Element    xpath=//input[@type="submit"]
    # Click Element    xpath=//input[contains(@type,"Submit")]
    # Click Element  xpath=//a[contains(.,’Submit’)]
    # Click Element    xpath=//a[contains(text(),'submit')]
    # Click Element    xpath=//a[contains(text(),'Amazon')]
    Click Element    xpath=//a[contains(text(),'Amazon Currency Converter')]

    # CSS
    # Click Element    css=#nav-search-submit-button # OBS ---> Requires Xpath 2.0 - limited support !!!!!!!!!
    # Click Element  xpath=//a[contains(.,’Submit’)]

    # Click Element    css=input[type*='Submit']
    Click Element    css=input[type*='ubmi']    # the carret * sign
    
    Sleep    1
