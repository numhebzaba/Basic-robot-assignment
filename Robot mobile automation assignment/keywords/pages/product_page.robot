*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click add to cart button
    AppiumLibrary.Wait until element is visible    ${product_locator.add_to_cart_btn}
    AppiumLibrary.Click element    ${product_locator.add_to_cart_btn}
    