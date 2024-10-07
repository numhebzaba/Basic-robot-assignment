*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click add to cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.add_to_cart_button}
    SeleniumLibrary.Click Element    ${product_locator.add_to_cart_button}
Click OK pop up after add product successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.OK_pop_up}
    SeleniumLibrary.Click Element    ${product_locator.OK_pop_up}   
    SeleniumLibrary.Wait Until Element Is Not Visible    ${product_locator.OK_pop_up}

    ${IsElementVisible}=  BuiltIn.Run Keyword And Return Status    SeleniumLibraryElement Should Be Visible   ${product_locator.OK_pop_up}
    BuiltIn.Run Keyword If    ${IsElementVisible}  Click Element    ${product_locator.OK_pop_up}  
    
Click cart icon then should show delivery info page
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.cart_icon}
    SeleniumLibrary.Click Element    ${product_locator.cart_icon}   
    
