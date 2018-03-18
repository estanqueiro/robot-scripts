*** Settings ***
Documentation  Main steps of the test case
Resource  ./PO/Landing.robot
Resource  ./PO/Team.robot
Resource  ./PO/TopNav.robot

*** Keywords ***
Go to "Front-Office" Page
    Landing.Navigate to
    Landing.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents