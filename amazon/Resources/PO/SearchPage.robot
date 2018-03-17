*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Variables ***
${SEARCH_BAR} =     id=twotabsearchtextbox
${SEARCH_BUTTON} =  css=.nav-input

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    Click Button  ${SEARCH_BUTTON}