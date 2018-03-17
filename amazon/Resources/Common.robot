*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    open browser  about:blank  firefox

End Web Test
    close browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    Log  I am cleaning up the test data...

Custom Keyword 1
    Log  Doing keyword 1

Custom Keyword 2
    Log  Doing keyword 2