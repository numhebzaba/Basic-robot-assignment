*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click preparing to see order should be created
    Wait Until Element Is Visible    ${account_locator.preparing_order}
    Click Element    ${account_locator.preparing_order}
Check order status
    ${status}    Get Text    ${account_locator.order_status}
    Log    ${status}    console=True
    Should Be Equal As Strings    ${status}     Preparing