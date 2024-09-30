*** Settings ***
Resource    ../import.robot

*** Keywords ***

Input name on delivery info page
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${delivery_info_locator.name}
    Input Text    ${delivery_info_locator.name}    ${name}
Input surname on delivery info page
    [Arguments]    ${surname}
    Wait Until Element Is Visible    ${delivery_info_locator.surname}
    Input Text    ${delivery_info_locator.surname}    ${surname}
Input shipping address on delivery info page
    [Arguments]    ${shipping_address}
    Wait Until Element Is Visible    ${delivery_info_locator.shipping_address}
    Input Text    ${delivery_info_locator.shipping_address}    ${shipping_address}
Input phone number on delivery info page
    [Arguments]    ${phone_number}
    Wait Until Element Is Visible    ${delivery_info_locator.phone_number}
    Input Text    ${delivery_info_locator.phone_number}    ${phone_number}
Click pay button
    Wait Until Element Is Visible    ${delivery_info_locator.pay_btn}
    Click Element    ${delivery_info_locator.pay_btn}

