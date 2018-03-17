*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/SearchPage.robot
Resource  ../Resources/PO/SearchResultsPage.robot
Resource  ../Resources/PO/ProductPage.robot
Resource  ../Resources/PO/CartPage.robot
Resource  ../Resources/PO/SignInPage.robot

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    SignInPage.Login With Valid Credentials     ${Username}  ${Password}

Login with Invalid Credentials
    SignInPage.Fill "Email" Field  bogus@bogus.com
    SignInPage.Fill "Password" Field  bad Password
    SignInPage.Click "Sign In" Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    SearchPage.Search for Products
    SearchResultsPage.Verify Search Completed

Select Product from Search Results
    SearchResultsPage.Click Product Link
    ProductPage.Verify Page Loaded

Add Product to Cart
    ProductPage.Add to Cart
    CartPage.Verify Product Added

Begin Checkout
    CartPage.Proceed to Checkout
    SignInPage.Verify Page Loaded


