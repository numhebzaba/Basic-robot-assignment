*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click cart icon then page should cart page
    Wait Until Element Is Visible    ${topbar_locator.cart_icon} 
    Click Element    ${topbar_locator.cart_icon} 