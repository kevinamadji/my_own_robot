*** Settings ***
Resource     ../Ressources/common.robot
Resource     ../Ressources/PO/PageAcceuil.robot
Suite Setup     common.Begin Web Test
Suite Teardown     common.End web Test


*** Test Cases ***
Voir produit disponible 
    PageAcceuil.Charger google

    PageAcceuil.Chercher le site amazone

    PageAcceuil.Naviger vers le site amazon

    PageAcceuil.Rechercher un produit
