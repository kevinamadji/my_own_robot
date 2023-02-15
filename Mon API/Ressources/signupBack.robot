*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     DatabaseLibrary

Resource     variables.robot
   

*** Keywords ***
Verifier si l'utilisateur n'existe pas dans la bd 
    Connect To Database Using Custom Params     pymysql     database='demo', user='root', password='', host = 'localhost'
    Row Count Is 0     select id from users where username = '${USERNAME}' and password = md5('${PASSWORD}')

Inscription utilisateur 
    Create Session  session1  ${WEBSITE_LINK}    
    ${data} =  Create Dictionary     username = ${USERNAME}     password = ${PASSWORD}
    ${header} =  Create Dictionary    Content-Type=application/x-www-form-urlenooded
    ${response} =  POST  http://localhost/demo/api/user     data=${data}     headers=${header}
    ${json} =  Set Variable  ${response.json()}
    Log  ${json}
    Should Be Equal As Strings  ${response.status_code}  200

Verifier que l'utilisateur est ajouter à la bd 
    Connect To Database Using Custom Params     pymysql     database='demo', user='root', password='', host = 'localhost'
    Row Count Is Equal To X  select id from users where username = '${USERNAME}' and password = md5('${PASSWORD}')  1
