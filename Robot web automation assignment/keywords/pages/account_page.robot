*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click preparing to see order should be created
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.preparing_order}
    SeleniumLibrary.Click Element    ${account_locator.preparing_order}
Check order status that should be Preparing
    ${status}    SeleniumLibrary.Get Text    ${account_locator.order_status}
    Log    ${status}    console=True
    BuiltIn.Should Be Equal As Strings    ${status}     Preparing
    