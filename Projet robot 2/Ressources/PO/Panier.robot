*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Inspecter panier 
    Click Element     css=span.a-button-base
    Wait Until Page Contains     Votre panier
    Click Element     //*[@id="attachSiNoCoverage"]/span/input
    Click Element     //*[@id="attach-close_sideSheet-link"]

Valider panier 
    Click Element     //*[@id="sc-buy-box-ptc-button"]/span/input
    Wait Until Page Contains     S'identifier


