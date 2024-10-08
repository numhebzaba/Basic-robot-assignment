*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Check total item text 
    [Arguments]    ${total_items}
    AppiumLibrary.Wait until element is visible    ${my_cart_locator.total_items} 
    ${text}    AppiumLibrary.Get text    ${my_cart_locator.total_items} 
    AppiumLibrary.Element text should be    ${my_cart_locator.total_items}    ${total_items}
    Log    ${text}    console=true
    