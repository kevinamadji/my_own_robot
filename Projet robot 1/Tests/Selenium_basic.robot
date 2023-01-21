*** Settings ***
Library     SeleniumLibrary
Documentation   Test basic sur selenium
*** Variables ***
${Browser1}     chrome
${Browser2}     firefox
${URL_google}   https://www.google.com/
*** Keywords ***
Open navigateur
    open browser     ${URL_google}  ${Browser1}
    maximize browser window


*** Test Cases ***
Reche Google
    Open navigateur
    
    



