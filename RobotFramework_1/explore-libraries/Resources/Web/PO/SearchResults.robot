*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page
    # Click Link    css=#img[alt='Sponsored Ad - RemoteOverstock for Complete 3-Button Remote (Wit Electronics and Chip) Compatible with Ferrari Smart Key F...']