*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome   

# I added these Keywords, fault in Brian's script
*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    # Maximize Browser Window

End Web Test
    Close Browser

    
*** Test Cases ***
Begin Web Test
    set selenium timeout  30 seconds
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser