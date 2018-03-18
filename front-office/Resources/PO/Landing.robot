*** Settings ***
Documentation  Loads the front-office page and verifies if it is loaded.
Library  Selenium2Library

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav

*** Keywords ***
Navigate to
    go to  ${START_URL}

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}