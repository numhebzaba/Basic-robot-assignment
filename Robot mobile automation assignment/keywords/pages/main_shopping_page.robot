*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click product name sauce laps bacpack
    AppiumLibrary.Wait until element is visible    ${main_shopping_locator.product_1}
    AppiumLibrary.Click element    ${main_shopping_locator.product_1}