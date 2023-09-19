*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
This is my first test Case
    My Keywords
    Open Browser    http://www.google.com    chrome

*** Keywords ***
My Keywords
    Log    This is a test
    Log To Console    test message to console
    