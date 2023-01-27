*** Settings ***
Library     SeleniumLibrary
Resource     ../Ressources/Commons.robot
Resource     ../Ressources/App/GotoIsg.robot

Suite Setup     Commons.Start testing
Suite Teardown     Commons.End testing


*** Test Cases ***
launch isg
    GotoIsg.Loard google
    GotoIsg.Search Bruneau
    GotoIsg.Go to Bruneau.fr

Search some product & put it on the basket
    GotoIsg.Search a reference
    GotoIsg.Put a reference on a basket

