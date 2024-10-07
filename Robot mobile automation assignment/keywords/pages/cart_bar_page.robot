*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click cart icon then page should cart page
    AppiumLibrary.Wait Until Element Is Visible    ${cart_bar_locator.cart_icon} 
    AppiumLibrary.Click Element    ${cart_bar_locator.cart_icon} 