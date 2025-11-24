*** Settings ***
Library     SeleniumLibrary
Library     ExcelReader.py

*** Variables ***

${EXCEL_FILE}    Data.xlsx
${SHEET_FILE}    Sheet1
${URL}    https://www.facebook.com/
${email_id}    id=email
${password_id}    id=pass

*** Test Cases ***
first
    Log    Hello World
    ${result}=    Read Excel As List Of Dicts    ${EXCEL_FILE}    ${SHEET_FILE}
     FOR    ${row}    IN    @{result}
        Log To Console   \n--- Running test for: ${row['username']} ---
        Open Browser    ${URL}    chrome
        Set Selenium Implicit Wait    10 seconds
        EnterUsername  ${row['username']}
        EnterPassword  ${row['password']}
        Click Button  name=login
      END

*** Keywords ***
EnterUsername
    [Arguments]    ${usename}
    Wait Until Element Is Visible    ${email_id}
    Input Text    ${email_id}    ${usename}


EnterPassword
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${password_id}
   Input Text    ${password_id}    ${password}
