*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com/
${BROWSER}    chrome
${BROWSER_2}    Firefox

*** Test Cases ***
#Should be able to to something
Test case 1
    Open Browser    ${URL}  ${BROWSER}
    Mouse Over    id=nav-tools
    Click Link    link=Create a List
    # Click Link    default=/hz/wishlist/ls?triggerElementID=createList&amp
    # ...    ;ref_=nav_ListFlyout_navFlyout_createList_lv_redirect
    Sleep    1
    Close Browser

#Open Firefox and Visit a Website
Test case 2
    Open Browser    ${URL}  Firefox  executable_path=/geckodriver
    Maximize Browser Window
    Capture Page Screenshot
    Close Browser