*** Settings ***
Documentation  This file shows the procedures for starting and ending tests
Library  Selenium2Library

*** Variables ***
${BROWSER} =  firefox

*** Keywords ***
Begin Web Test
    [Documentation]  This keyword starts the browser
    Open Browser  about:blank  ${BROWSER}

End Web Test
    [Documentation]  This keyword stops the browser
    Close Browser

