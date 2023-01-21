*** Settings ***
Library     AutoRecorder     mode=suite     name= video_test     
Library     SeleniumLibrary

*** Variables ***
${Navig}     chrome
${URL}     https://www.youtube.com/

*** Keywords ***
Surffer sur youtube
    Open Browser     ${URL}     ${Navig}
    Maximize Browser Window
    Sleep     5

*** Test Cases ***
AutoRecord
    Surffer sur youtube