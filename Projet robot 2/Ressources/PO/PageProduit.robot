*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Choisir un produit interressant
    Click Element     xpath=//*[@id="sp-cc-accept"]
    Click Element     //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[6]/div/div/div/div/div[2]/div[2]/h2/a/span
    Wait Until Page Contains     Ajouter au panier 


Choisir capacité iphone 
    Click Button     //*[@id="a-autoid-17-announce"]
    Capture Page Screenshot     img.png
    Wait Until Page Contains     Ajouter au panier 
   
Ajouter iphone au panier 
    Click Element     //*[@id="add-to-cart-button"]
    Wait Until Page Contains     Ajouter au panier
    
    



