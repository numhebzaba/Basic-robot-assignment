*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click add to cart button
    AppiumLibrary.Wait Until Element Is Visible    ${product_locator.add_to_cart_btn}
    AppiumLibrary.Click Element    ${product_locator.add_to_cart_btn}
    