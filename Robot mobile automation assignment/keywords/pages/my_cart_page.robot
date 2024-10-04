*** Settings ***
Resource    ../import.robot
*** Keywords ***
Check total item text 
    [Arguments]    ${verify_text}
    Wait Until Element Is Visible    ${my_cart_locator.total_item_text}
    ${text}    Get Text    ${my_cart_locator.total_item_text}
    Log    ${text}    console=True
    Element Text Should Be    ${my_cart_locator.total_item_text}    ${verify_text}

