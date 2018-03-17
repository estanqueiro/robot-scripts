*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/Amazon.robot  # for lower level keywords in script

Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Lamborghini Gallardo

*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    Amazon.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout