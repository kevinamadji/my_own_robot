*** Settings ***
Library     SeleniumLibrary
Resource     ../Variables.robot



*** Keywords ***
Loard google 
    Go To     ${URL}
    click element   //*[@id="L2AGLb"]
    wait until page contains    Google

Search Bruneau
    Clear Element Text     xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Input Text     xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input     ${Isg} 
    #Mouse Down     id=hplogo
    #Mouse Out      id=hplogo
    Click Element     class=gNO89b
    Wait Until Page Contains     Images


Go to Bruneau.fr
    Click Element     //*[@id="tads"]/div/div/div/div/div[1]/a/div[1]/span
    Wait Until Page Contains     Bruneau
    #Click Element     //*[@id="onetrust-accept-btn-handler"]
    Sleep     2

Search a reference
    Click Element     //*[@id="onetrust-accept-btn-container"]

    Click Element     //*[@id="isg-header-search"]/form/div/input
    Clear Element Text     //*[@id="isg-header-search"]/form/div/input
    Input Text     //*[@id="isg-header-search"]/form/div/input     15101
    Click Element     //*[@id="isg-header-search"]/form/button[2]/i
    Wait Until Page Contains     Référence : 15101

Put a reference on a basket
    #Click Element     //*[@id="isg-product-offer-quantity"]/div/div/span[2]/button[2]
    Click Element     //*[@id="isg-product-offer-quantity"]/div/div/span[2]/input
    Clear Element Text     //*[@id="isg-product-offer-quantity"]/div/div/span[2]/input
    Input Text     //*[@id="isg-product-offer-quantity"]/div/div/span[2]/input     10
    Wait Until Page Contains     Référence : 15101
    Click Element     //*[@id="isg-product-offer-container"]/form/div[2]/button/span
    Wait Until Page Contains     Référence : 15101
    Click Element     id=isg-header-cart
    #Click Element     //*[@id="isg-product-offer-container"]/form/div[2]/button
