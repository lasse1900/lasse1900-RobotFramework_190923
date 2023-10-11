*** Variables ***
${string1}    This is string 1
${string2}    This is string 2
${result}     ${EMPTY}
${result} 

*** Test Cases ***
Compare Strings and Set Variable
    [Tags]  mytest
    ${string1}    Set Variable    This is string 1
    ${string2}    Set Variable    This is string 2

    Run Keyword If    '${string1}' == '${string2}'    Set Variable    ${result}    Strings are equal
    ...    ELSE IF    '${string1}' != '${string2}'    Set Variable    ${result}    Strings are not equal
    ...    ELSE    Set Variable    ${result}    Unexpected condition

    Log    The result is: ${result}
