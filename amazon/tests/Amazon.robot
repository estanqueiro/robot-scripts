*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    open browser  about:blank  ff

Search for Products
    go to  http://www.amazon.com
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  Go
    wait until page contains  results for "Ferrari 458"

Select Product from Search Results
    click link  css=#result_1 a.a-link-normal
    wait until page contains  Back to search results

Add Product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

Begin Checkout
    click link  Proceed to checkout (1 item)
    page should contain element  name=signIn
    element text should be  css=h1  Sign in

End Web Test
    close browser