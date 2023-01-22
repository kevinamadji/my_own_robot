*** Settings ***
Library     SeleniumLibrary
Resource     variable.robot

*** Keywords ***
Begin Web Test 
    Open Browser     about:blank     ${navi}
    Maximize Browser Window


End web Test 
    Close Browser

