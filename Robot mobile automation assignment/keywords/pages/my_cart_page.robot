*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Check total item text 
    [Arguments]    ${total_items}
    Wait Until Element Is Visible    ${my_cart_locator.total_items} 
    ${text}    Get Text    ${my_cart_locator.total_items} 
    Element Text Should Be    ${my_cart_locator.total_items}    ${total_items}
    Log    ${text}    console=true