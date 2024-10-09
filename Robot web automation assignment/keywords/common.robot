*** Settings ***
Resource    ${CURDIR}/./import.robot
#ไม่จำเป็น
*** Keywords ***
Open training platform doppio website
    Open browser    ${url}    gc
Click element when ready
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    ${locator}
    SeleniumLibrary.Click element    ${locator}