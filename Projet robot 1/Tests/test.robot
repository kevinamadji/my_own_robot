*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Salut}  hello 
${nom}  kevin 
${multiligne}    SEPARATOR=\n     Ligne 1     ligne 2 
...    ligne 3     ligne 4

@{user}    goldenboy barlax massmass
@{Nom1}    John Doe ana 
@{Nom2}    @{Nom1} Richard
@{multilist}  Ethan    kylian    Enzo    Lucas    Rayane    Sitraka
 
*** Keywords ***


*** Test Cases ***
Constante
    Log  hello
    Log  hello word

Variable 
    Log  ${Salut} ${nom} 
    Log    ${multiligne}

Liste 
    Log     @{user}
    Log     @{Nom2}
    Log     @{Nom1}
    Log     @{multilist} [1:3]

Dictionaire
    ${dico} =     Create Dictionary     login=kevin     mdp=bauer
    log     ${dico} [login]