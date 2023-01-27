*** Settings ***
Library     SeleniumLibrary
Resource     Variables.robot

*** Keywords ***
Start testing
    Open Browser     about:blank     ${nav}
    Maximize Browser Window

End testing
    Close Browser