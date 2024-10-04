*** Settings ***
Resource    ../import.robot
*** Keywords ***
Click add to cart button
    Wait Until Element Is Visible    ${product_1_locator.add_to_cart} 
    Click Element    ${product_1_locator.add_to_cart} 

