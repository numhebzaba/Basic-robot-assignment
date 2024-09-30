*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click add to cart button
    Wait Until Element Is Visible    ${product_locator.add_to_cart_button}
    Click Element    ${product_locator.add_to_cart_button}
Click OK pop up after add product successfully
    Wait Until Element Is Visible    ${product_locator.OK_pop_up}
    Click Element    ${product_locator.OK_pop_up}   
    Wait Until Element Is Not Visible    ${product_locator.OK_pop_up}
Click cart icon
    Wait Until Element Is Visible    ${product_locator.cart_icon}
    Click Element    ${product_locator.cart_icon}   
