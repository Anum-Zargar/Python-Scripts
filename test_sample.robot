*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
first
     Log    Hello World
     Open Browser   https://google.com    chrome
    Sleep    2s
     Close Browser

*** Keywords ***




