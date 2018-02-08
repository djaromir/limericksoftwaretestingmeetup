*** Settings ***
Library         SeleniumLibrary    implicit_wait=0.0
Test Teardown   Close Browser

*** Variables ***
${BROWSER}    Chrome

*** Test Cases ***
Ensure Robot Framework homepage is first result in Google Search for Robot Framework
    Open Browser To Page  https://www.google.com

*** Keywords ***
Open Browser To Page
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER}
