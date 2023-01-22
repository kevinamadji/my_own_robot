*** Settings ***
Library     String


*** Variables ***

*** Keywords ***

*** Test Cases ***
Convertir en miniscule
    ${str1}=     Convert To Lower Case     ABBC
    ${str2}=     Convert To Upper Case     kevin 
    Should Be Lower Case     ${str1}
    Should Be Upper Case     ${str2}
    Should Be Equal          ${str1}     abbc  
    Should Be Equal          ${str2}     KEVIN

Convertir en majuscule
    ${str1}=     Convert To Upper Case     leo
    ${str2}=     Convert To Lower Case     CATHERINE 
    Should Be Upper Case     ${str1}
    Should Be Lower Case     ${str2}
    Should Be Equal          ${str1}     LEO  
    Should Be Equal          ${str2}     catherine

Generation d'un chaine random
    ${mot}     Generate Random String     12     [LOWER]
    Log     ${mot}
    ${mot2}     Generate Random String    4-10   [UPPER]
    Log     ${mot2}

Supprimer une chaine 
    ${str}     Remove String     Amadji ke     vin
    Should Be Equal     ${str}   Amadji ke  
    Log     ${str}
    ${str2}     Remove String     Robot Framework     o     bt
    Log     ${str2}

Remplacer une chaine 
    ${str}     Replace String     Hello wold     wold     kevin !
    Log     ${str}
    ${str2}     Replace String     je suis un dev     dev     testeur! 
    Log     ${str2}
