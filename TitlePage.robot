*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
firsttestcase

    Log    Hello World
    Open Browser  https://google.com   chrome
    Sleep  2s
    Close Browser
    FOR    ${i}    IN RANGE    5
    Log To Console    Loop: ${i}
    END

*** Test Cases ***
Validate Successful Login
    Open Browser    https://www.google.com/    chrome
#    Input Text      id=username    admin
#    Input Text      id=password    pass123
#    Click Button    id=login

#    Wait Until Element Is Visible    xpath=//h1

    ${title}=    Get Title
    ${expected_title}=  Set Variable    Google

    Should Be Equal    ${title}    ${expected_title}

    Close Browser