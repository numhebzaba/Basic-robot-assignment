*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click cart icon then page should cart page
    Wait Until Element Is Visible    ${cart_bar_locator.cart_icon} 
    Click Element    ${cart_bar_locator.cart_icon} 