*** Settings ***
Documentation  Verifies if topmenu is loaded and selects the team item on it.
Library  Selenium2Library

*** Variables ***
${TOP_MENU} =  id=mainNav
${TOP_MENU_TEAM_ITEM} =  css = a["Team"]

*** Keywords ***
Verify "Top Menu" Loaded
    Wait Until Page Contains  ${TOP_MENU}

Select "Team" Item
    Click Link  ${TOP_MENU_TEAM_ITEM}