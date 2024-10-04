*** Settings ***
Resource    ../import.robot
*** Keywords ***
Click product name sauce laps bacpack 1
    Wait Until Element Is Visible    ${main_shopping_locator.product_1}
    Click Element    ${main_shopping_locator.product_1}

