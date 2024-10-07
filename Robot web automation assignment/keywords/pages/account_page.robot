*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click preparing to see order should be created
    SeleniumLibrary.Wait until element is visible   ${account_locator.preparing_order}
    SeleniumLibrary.Click element    ${account_locator.preparing_order}
Check order status that should be preparing
    ${status}    SeleniumLibrary.Get text    ${account_locator.order_status}
    Log    ${status}    console=True
    BuiltIn.Should be equal as strings    ${status}     Preparing
    