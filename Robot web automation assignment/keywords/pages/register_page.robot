*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Input username on register page
    [Arguments]    ${username}
    SeleniumLibrary.Wait until element is visible    ${register_locator.username}
    SeleniumLibrary.Input text    ${register_locator.username}    ${username}
Input password on register page
    [Arguments]    ${password}
    SeleniumLibrary.Wait until element is visible    ${register_locator.password} 
    SeleniumLibrary.Input text    ${register_locator.password}    ${password}
Input confirm password on register page
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait until element is visible    ${register_locator.confirm_password}
    SeleniumLibrary.Input text    ${register_locator.confirm_password}    ${confirm_password}
Click sign up button
    SeleniumLibrary.Wait until element is visible    ${register_locator.sign_up_btn}
    SeleniumLibrary.Click element    ${register_locator.sign_up_btn}   
Click ok pop up after register successfully
    SeleniumLibrary.Wait until element is visible    ${register_locator.OK_pop_up}
    SeleniumLibrary.Click element    ${register_locator.OK_pop_up}   
    SeleniumLibrary.Wait until element is not visible    ${register_locator.OK_pop_up}