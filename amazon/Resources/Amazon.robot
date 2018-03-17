*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
#Resource  ../Resources/PO/SearchPage.robot
#Resource  ../Resources/PO/SearchResultsPage.robot
#Resource  ../Resources/PO/ProductPage.robot
#Resource  ../Resources/PO/CartPage.robot
#Resource  ../Resources/PO/SignInPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Enter Search Term
    Submit Search
#    SearchResultsPage.Verify Search Completed

Select Product from Search Results
    SearchResultsPage.Click Product Link
    ProductPage.Verify Page Loaded

Add Product to Cart
    ProductPage.Add to Cart
    CartPage.Verify Product Added

Begin Checkout
    CartPage.Proceed to Checkout
    SignInPage.Verify Page Loaded

Enter Search Term
    input text  id=twotabsearchtextbox  Ferrari 458

Submit Search
    click button  css=.nav-input
