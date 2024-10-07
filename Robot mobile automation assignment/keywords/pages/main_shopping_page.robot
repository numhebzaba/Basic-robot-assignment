*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click product name sauce laps bacpack
    AppiumLibrary.Wait Until Element Is Visible    ${main_shopping_locator.produt_1}
    AppiumLibrary.Click Element    ${main_shopping_locator.produt_1}