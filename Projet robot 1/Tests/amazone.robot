*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}     https://www.amazon.fr/
${navigateur}     chrome
*** Keywords ***
Acceder a amazone
    Open Browser     ${url}     ${navigateur}
    Maximize Browser Window
    
*** Test Cases ***
