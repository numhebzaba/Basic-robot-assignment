*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Check total item text 
    [Arguments]    ${total_items}
    AppiumLibrary.Wait Until Element Is Visible    ${my_cart_locator.total_items} 
    ${text}    AppiumLibrary.Get Text    ${my_cart_locator.total_items} 
    AppiumLibrary.Element Text Should Be    ${my_cart_locator.total_items}    ${total_items}
    Log    ${text}    console=true
    