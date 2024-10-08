*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click cart icon then page should cart page
    AppiumLibrary.Wait until element is visible    ${cart_bar_locator.cart_icon} 
    AppiumLibrary.Click element    ${cart_bar_locator.cart_icon} 