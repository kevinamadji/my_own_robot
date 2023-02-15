*** Settings ***
Resource  ../Ressources/signupBack.robot



*** Test Cases ***
Inscrire un utilisateur
    [Tags]  First 
    signupBack.Verifier si l'utilisateur n'existe pas dans la bd
    signupBack.Inscription utilisateur
    signupBack.Verifier que l'utilisateur est ajouter à la bd
    