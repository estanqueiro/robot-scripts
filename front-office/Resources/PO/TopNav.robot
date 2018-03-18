*** Settings ***
Documentation  Verifies if topmenu is loaded and selects the team item on it.
Library  Selenium2Library

*** Variables ***
${TOP_NAV_TEAM_LINK} =  css=#bs-example-navbar-collapse-1 > ul li:nth-child(5) > a

*** Keywords ***
Select "Team" Page
    click element  ${TOP_NAV_TEAM_LINK}
    sleep  3s
