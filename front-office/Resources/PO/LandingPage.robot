*** Settings ***
Documentation  Loads the front-office page and verifies if it is loaded.
Library  Selenium2Library

*** Variables ***
${LANDINGPAGE_WELCOME_TEXT} =       Welcome To Our Studio!

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  ${LANDINGPAGE_WELCOME_TEXT}