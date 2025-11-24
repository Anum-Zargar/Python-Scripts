*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.hyrtutorials.com/p/html-dropdown-elements-practice.html
${course_name}    xpath=//select[@id='course']
${ide_name}    xpath=//Select[@id='ide']
${tut_dropdown}     xpath=//a[normalize-space()='Tutorials']
${sel_dropdown}    xpath=//a[normalize-space()='YouTube Courses']
*** Test Cases ***
first
    Log    Hello World
    Open Browser    ${URL}     Chrome
    Maximize Browser Window
        # --- COURSE NAME ---
        Select Course      Java
        Verify Course Selected    Java

    # --- IDE NAME (Multi-select dropdown) ---
    Select IDEs    IntelliJ IDEA
    Verify IDE Selected    IntelliJ IDEA

    #CLick Home
    Click Link    //a[normalize-space()='Home'][1]
    Log To Console    "Test Link"


    Sleep    3s
    Close Browser

TestCase2

    Open Browser    ${URL}         Chrome
    Maximize Browser Window
    Select Tutorails Dropdown    Dot Net
    Select YouTube CoursesDropdown    English
    Sleep    3s
    Close Browser


*** Keywords ***
Select Course
    [Arguments]    ${course}
    # TODO: implement keyword "Select Course".
    Wait Until Element Is Visible    ${course_name}
    Select From List By Label    ${course_name}    ${course}



Verify Course Selected
    [Arguments]    ${Expected}
    # TODO: implement keyword "Verify Course Selected".
   ${actual}=    Get Selected List Label    ${course_name}
   Should Be Equal    ${actual}    ${Expected}


Select IDEs
    [Arguments]    @{ide}    ${item}=IntelliJ IDEA
      Wait Until Element Is Visible    ${ide_name}
    FOR    ${row}    IN    @{ide}
        Select From List By Label    ${ide_name}    ${item}

    END

Verify IDE Selected
    [Arguments]    ${expected}
    ${selected}=  Get Selected List Labels    ${ide_name}
    Should Be Equal       ${selected}[0]    ${expected}


Select Tutorails Dropdown
    [Arguments]    ${subitem}
    # TODO: implement keyword "Select Tutorails Dropdown".
    Mouse Over    ${tut_dropdown}
    Wait Until Element Is Visible    xpath=//a[normalize-space()='${subitem}']
    Click Element    ${tut_dropdown}


Select YouTube CoursesDropdown
    [Arguments]    ${subitem}
    # TODO: implement keyword "Select YouTube CoursesDropdown".
     Mouse Over    ${sel_dropdown}
    Wait Until Element Is Visible    xpath=//a[normalize-space()='${subitem}']
    Click Element    ${tut_dropdown}

