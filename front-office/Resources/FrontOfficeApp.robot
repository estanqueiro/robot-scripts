*** Settings ***
Documentation  Main steps of the test case
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopMenu.robot
Resource  ../Resources/PO/TeamPage.robot

*** Keywords ***
Navigate to "Front-Office" Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

Select "Team" Item from Top Menu
    TopMenu.Verify "Top Menu" Loaded
    TopMenu.Select "Team" Item

Validate Match Requirements
    TeamPage.Verify "Team Item" Loaded
    TeamPage.Validate Match Requirements