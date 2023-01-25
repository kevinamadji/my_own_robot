*** Settings ***
Resource   ../Ressources/common.robot
Resource   ../Ressources/PO/PageAcceuil.robot
Resource   ../Ressources/PO/PageProduit.robot
Resource     ../Ressources/PO/Panier.robot


Suite Setup     common.Begin Web Test
Suite Teardown     common.End web Test


*** Test Cases ***
Voir produit disponible 
    PageAcceuil.Charger google

    PageAcceuil.Chercher le site amazone

    PageAcceuil.Naviger vers le site amazon

    PageAcceuil.Rechercher un produit


Acceder au produit 
    PageProduit.Choisir un produit interressant

    PageProduit.Choisir capacité iphone

    PageProduit.Ajouter iphone au panier

Acceder au panier 
    Panier.Inspecter panier
    Panier.Valider panier