*** Settings ***
Documentation  This test shows the Front Office's team
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d Results Tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.robotframeworktutorial.com/front-office

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  Acessa a página "Team"
    [Tags]  test1
    FrontOfficeApp.Go to "Front-Office" Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  Verifica se está na página "Team"
    [Tags]  test2
    FrontOfficeApp.Go to "Front-Office" Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page