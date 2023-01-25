*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navigator}     chrome
${url}     https://www.google.com/
${mail}     testeurqa96
${mdp}     Informatique17**
${mailto}     kevinamadji613@gmail.com
${objet} 

*** Keywords ***
Acceder a google
    Open Browser   ${url}     ${navigator}
    Maximize Browser Window
    click element   //*[@id="L2AGLb"]                     #accepter coockies 
    Wait Until Page Contains     Google 

Acceder a gmail
    Click Element     //*[@id="gb"]/div/div[1]/div/div[1]/a
    Wait Until Page Contains     Connexion
    Click Element     css=a.button--medium
    Wait Until Page Contains     Connexion
    Clear Element Text     //*[@id="identifierId"]
    Click Element     //*[@id="identifierNext"]/div/button/span
    Wait Until Page Contains     Connexion


Me connecter a mon compte Qa 
    Clear Element Text     //*[@id="identifierId"]
    Input Text    //*[@id="identifierId"]    ${mail} 
    Click Element     //*[@id="identifierNext"]/div/button/span
    Sleep     10
    Wait Until Page Contains     Google     8
    Clear Element Text     //*[@id="password"]/div[1]/div/div[1]/input
    Input Text     //*[@id="password"]/div[1]/div/div[1]/input     ${mdp}



*** Test Cases ***
Main test 
    Acceder a google
    Acceder a gmail
    