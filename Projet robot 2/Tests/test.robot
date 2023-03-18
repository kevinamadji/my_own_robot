*** Variables ***
${salut}  hello 
${nom}  world 

*** Test Cases ***
Mon test 
    Log  hello 
    Log  hello world

Variable
    Log  ${salut}
    Log  ${salut} ${nom}