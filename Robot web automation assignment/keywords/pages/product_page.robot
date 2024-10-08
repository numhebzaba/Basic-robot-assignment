*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click add to cart button
    SeleniumLibrary.Wait until element is visible    ${product_locator.add_to_cart_button}
    SeleniumLibrary.Click element    ${product_locator.add_to_cart_button}
Click ok pop up after add product successfully
    SeleniumLibrary.Wait until element is visible    ${product_locator.ok_pop_up}
    SeleniumLibrary.Click element    ${product_locator.ok_pop_up}   
    SeleniumLibrary.Wait until element is not visible    ${product_locator.ok_pop_up}

    ${IsElementVisible}=  BuiltIn.Run keyword and return status    SeleniumLibrary.Element should be visible   ${product_locator.ok_pop_up}
    BuiltIn.Run keyword if    ${IsElementVisible}  Click element    ${product_locator.ok_pop_up}  
    
Click cart icon then should show delivery info page
    SeleniumLibrary.Wait until element is visible    ${product_locator.cart_icon}
    SeleniumLibrary.Click element    ${product_locator.cart_icon}   
    
