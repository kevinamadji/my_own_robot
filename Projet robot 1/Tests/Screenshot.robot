*** Settings ***
Library  SeleniumLibrary
Library     Screenshot

*** Variables ***
${Browser}     chrome 


*** Keywords ***
Open python.org
    Open Browser     https:/www.python.org/     ${Browser}
    Maximize Browser Window
    Sleep     3     

*** Test Cases ***
Capture selenium
    Open python.org
    Capture Element Screenshot     //*[@id="downloads"]/a     Img/capture.jpg
    Capture Page Screenshot     Img/ecran.jpg

prendre une capture d'ecran 
    Screenshot.Take Screenshot     image     width=800p