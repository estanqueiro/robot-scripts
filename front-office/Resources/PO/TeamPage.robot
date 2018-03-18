*** Settings ***
Documentation  Verifies if "Team Item" header is loaded and its values is "OUR AMAZING TEAM".
Library  Selenium2Library

*** Variables ***
${TEAM_ITEM_HEADING} =  css = h2["Our Amazing Team"]
${TEAM_ITEM_WELCOME_TEXT} =  OUR AMAZING TEAM

*** Keywords ***
Verify "Team Item" Loaded
    Wait Until Page Contains  ${TEAM_ITEM_HEADING}

Validate Match Requirements
    Wait Until Page Contains  ${TEAM_ITEM_WELCOME_TEXT}