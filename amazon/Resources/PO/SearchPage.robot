*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library
Library  Selenium2Library

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  id=twotabsearchtextbox  Ferrari 458

Submit Search
    click button  css=.nav-input