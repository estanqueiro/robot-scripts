*** Settings ***
Documentation  This test shows the Front Office's team

Resource  ../Resources/Common.robot
Resource  ../Resources/FrontOfficeApp.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://robotframeworktutorial.com/front-office

*** Test Cases ***
User should be able to access "Team" page
    FrontOfficeApp.Navigate to "Front-Office" Page
    FrontOfficeApp.Select "Team" Item" from Top Menu
    FrontOfficeApp.Validate Match Requirements