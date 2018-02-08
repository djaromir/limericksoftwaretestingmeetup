# Limerick Software Testing Meetup
Repository to support Limerick Software Testing Meetup


# 8th February Goal

* Explore Robot Framework
http://robotframework.org/
* Implement test for basic user story using RF:
    * Ensure Robot Framework homepage is first result in Google Search for Robot Framework
    * Specifically:
        * Open Browser on google
        * Search for Robot Framework
        * Follow first result
        * Verify it is Robot Framework homepage

# Before you start

Ensure you have:
* python and pip installed
* Chrome installed
* chromedriver installed and its location is in your PATH
* Your favourite text editor ready (ideally one supporting RF syntax)

# Steps:

**Install Robot Framework**

    pip install robotframework
    
**Install Selenium Library**

    pip install robotframework-seleniumlibrary
    
**Create your first robot file (e.g. robotGoogle.robot)**

```robotframework
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
```
   
**Execute tests in your robot file using:**

    robot robotGoogle.robot

   You should see a browser being opened and accessing google.
   Check created report.html and log.html

**Use SeleniumLibrary documentation to finish the test case**

   http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
   
**Save screenshot in the end of the test case**

   Check created report.html and log.html with screenshot.
