*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Wait page auto fill 
    BuiltIn.Wait until keyword succeeds    30s    0.25s    SeleniumLibrary.Textfield should contain    ${delivery_info_locator.email}    ${testdata.username}
Input name on delivery info page
    [Arguments]    ${name}
    delivery_info_page.Wait page auto fill 
    SeleniumLibrary.Wait until element is visible    ${delivery_info_locator.name}
    SeleniumLibrary.Input text    ${delivery_info_locator.name}    ${name}
Input surname on delivery info page
    [Arguments]    ${surname}
    SeleniumLibrary.Wait until element is visible    ${delivery_info_locator.surname}
    SeleniumLibrary.Input text    ${delivery_info_locator.surname}    ${surname}
Input shipping address on delivery info page
    [Arguments]    ${shipping_address}
    SeleniumLibrary.Wait until element is visible    ${delivery_info_locator.shipping_address}
    SeleniumLibrary.Input text    ${delivery_info_locator.shipping_address}    ${shipping_address}
Input phone number on delivery info page
    [Arguments]    ${phone_number}
    SeleniumLibrary.Wait until element is visible    ${delivery_info_locator.phone_number}
    SeleniumLibrary.Input text    ${delivery_info_locator.phone_number}    ${phone_number}
Click pay button then page should show select payment method
    SeleniumLibrary.Wait until element is visible    ${delivery_info_locator.pay_btn}
    SeleniumLibrary.Click element    ${delivery_info_locator.pay_btn}

