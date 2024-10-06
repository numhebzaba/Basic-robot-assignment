*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click add to cart button
    Wait Until Element Is Visible    ${product_locator.add_to_cart_btn}
    Click Element    ${product_locator.add_to_cart_btn}