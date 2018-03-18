*** Settings ***
Documentation  Procedures for starting and ending tests
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    [Documentation]  This keyword starts the browser
    open browser  about:blank  ${BROWSER}
    #maximize browser window

End Web Test
    [Documentation]  This keyword stops the browser
    close all browsers

