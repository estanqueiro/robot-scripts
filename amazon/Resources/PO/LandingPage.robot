*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    go to  ${START_URL}

Verify Page Loaded
    wait until page contains  Your Amazon.com

