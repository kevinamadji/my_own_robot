*** Settings ***
Library     SeleniumLibrary
Resource    ../variable.robot

*** Keywords ***
Charger google 
    Go To     ${uri}
    click element   //*[@id="L2AGLb"]
    wait until page contains    Google
    

Chercher le site amazone 
    Clear Element Text     xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Input Text     xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input     amazon 
    #Mouse Down     id=hplogo
    #Mouse Out      id=hplogo
    Click Element     class=gNO89b
    Wait Until Page Contains     Images


Naviger vers le site amazon
    Click Element     xpath=//*[@id="tads"]/div/div/div/div/div[1]/a/div[1]
    Wait Until Page Contains     Coupons


Rechercher un produit
    Clear Element Text     name=field-keywords
    Input Text     name=field-keywords     iphone 12
    Click Element     xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains     iphone 12
    


