*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click product name sauce laps bacpack
    Wait Until Element Is Visible    ${main_shopping_locator.produt_1}
    Click Element    ${main_shopping_locator.produt_1}