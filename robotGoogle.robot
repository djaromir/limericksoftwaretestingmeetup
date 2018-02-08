*** Settings ***
Library         SeleniumLibrary    implicit_wait=0.0
Test Teardown   Close Browser

*** Variables ***
${BROWSER}    Chrome

*** Test Cases ***
Google Robot Test Case
    Open Browser To Page  https://www.google.com

*** Keywords ***
Open Browser To Page
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER}
