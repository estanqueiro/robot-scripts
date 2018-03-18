*** Settings ***
Documentation  Procedures for starting and ending tests
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    [Documentation]  This keyword starts the browser
    Open Browser  about:blank  ${BROWSER}

End Web Test
    [Documentation]  This keyword stops the browser
    Close Browser

