*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}    https://demoqa.com/select-menu
${dropdown_click}    xpath=//div[@id='withOptGroup']//div[contains(@class,'control')]

#*** Test Cases ***
#first
#    Log    Hello World
#    Open Browser    ${url}    chrome
##    Maximize Browser Window
#    Log To Console    "login to MenuDropdown"
#    Select From List By Label    id=oldSelectMenu    Red
#    Select From List By Value    id=oldSelectMenu    5
#    Set Selenium Timeout    10s
#    Click Element        ${select_value}
#    Log To Console    "/:::Test old Value dropdown"
#    Sleep    10s
#    Close Browser




*** Test Cases ***
Second
    Open Browser    ${url}    chrome
    Maximize Browser Window

    Click CustomDropdown    Group 2, option 1

    Sleep    3s
    Close Browser


*** Keywords ***
Click CustomDropdown
    [Arguments]    ${option_text}
    # Remove Ads blocking the dropdown
    Execute Javascript    var ad=document.querySelector('iframe[id^="google_ads"]'); if(ad){ad.style.display="none";}
    Sleep    1s

    # Scroll page to top to avoid overlays
    Execute Javascript    window.scrollTo(0, 0)
    Sleep    1s

    # Scroll first to avoid click intercepted
    Scroll Element Into View    ${dropdown_click}

    # Click the dropdown container's control section
    Wait Until Element Is Visible    ${dropdown_click}    10s
    Click Element    ${dropdown_click}

    # Build correct option XPath
    ${option_xpath}=    Set Variable    //div[contains(@class,'option')][normalize-space()='${option_text}']

    # Wait until option appears
    Wait Until Element Is Visible    ${option_xpath}    10s

    # Scroll to avoid banner covering option
    Scroll Element Into View    ${option_xpath}

    # Click the option
    Click Element    ${option_xpath}
