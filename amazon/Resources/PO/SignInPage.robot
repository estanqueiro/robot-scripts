*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  css=.a-section
    Element Text Should Be  css=.a-section h1  Sign in