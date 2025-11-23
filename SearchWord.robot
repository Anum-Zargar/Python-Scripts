*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
first
    Log    Hello World
   Open Browser  https://google.com   chrome
   Search from Ui   Opentext
   Sleep  2s
   Close Browser




*** Keywords ***
Search from Ui
    [Arguments]    ${searchtext}
    # TODO: implement keyword "Search from Ui".
    Wait Until Element Is Visible   name:q
    Input Text  name :q  ${searchtext}
    Press Key   name:q     ENTER

