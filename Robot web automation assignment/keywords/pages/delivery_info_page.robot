*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Wait Page auto fill 
    BuiltIn.Wait Until Keyword Succeeds    30s    0.25s    SeleniumLibrary.Textfield Should Contain    ${delivery_info_locator.email}    ${testdata.username}
Input name on delivery info page
    [Arguments]    ${name}
    Wait Page auto fill
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.name}
    SeleniumLibrary.Input Text    ${delivery_info_locator.name}    ${name}
Input surname on delivery info page
    [Arguments]    ${surname}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.surname}
    SeleniumLibrary.Input Text    ${delivery_info_locator.surname}    ${surname}
Input shipping address on delivery info page
    [Arguments]    ${shipping_address}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.shipping_address}
    SeleniumLibrary.Input Text    ${delivery_info_locator.shipping_address}    ${shipping_address}
Input phone number on delivery info page
    [Arguments]    ${phone_number}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.phone_number}
    SeleniumLibrary.Input Text    ${delivery_info_locator.phone_number}    ${phone_number}
Click pay button then page should show Select Payment Method
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.pay_btn}
    SeleniumLibrary.Click Element    ${delivery_info_locator.pay_btn}

