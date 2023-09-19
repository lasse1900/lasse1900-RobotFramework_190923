*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Team.robot

*** Variables ***

*** Keywords ***
Go To Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to "Team" Page 
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate to "Team" Page
    Team.Validate Page Contents