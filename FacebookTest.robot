*** Settings ***
Library  SeleniumLibrary

***Variables *******
${emailid_locator}    id=email
${password_locator}    id=pass

*** Test Cases ***
first
    Log    Hello World
    Open Browser  https://www.facebook.com/
    EnterUsername  zargaranum@gmail.com
    EnterPassword  Anum@1234
    Click Button  name=login
Sleep 2s
    Close Browser

*** Keywords ***
EnterUsername
  [Arguments]     ${username}
   Wait Until Element is Visible  ${emailid_locator}
   Input Text  ${emailid_locator}   ${username}


EnterPassword
  [Arguments]    ${password}
   Wait Until Element is Visible   ${password_locator}
   Input Text  ${password_locator}   ${password}