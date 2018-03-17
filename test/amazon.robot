*** Settings ***
Documentation   Present some information about this test suite
Library Selenium2Library

*** Variables ***
$(Browser) = ff

*** Test Cases ***
Guest must sign in to check out
    [Documentation] Present some information about this test case
    Open Browser    http://www.amazon.com.br    $(Browser)
    Wait Until Page Contains    Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    results for "Ferrari 458"
    Close Browser

