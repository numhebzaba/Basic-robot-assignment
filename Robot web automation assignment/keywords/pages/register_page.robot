*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Input username on register page
    [Arguments]    ${username}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.username}
    SeleniumLibrary.Input Text    ${register_locator.username}    ${username}
Input password on register page
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.password} 
    SeleniumLibrary.Input Text    ${register_locator.password}    ${password}
Input confirm password on register page
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.confirm_password}
    SeleniumLibrary.Input Text    ${register_locator.confirm_password}    ${confirm_password}
Click sign up button
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.sign_up_btn}
    SeleniumLibrary.Click Element    ${register_locator.sign_up_btn}   
Click OK pop up after register successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.OK_pop_up}
    SeleniumLibrary.Click Element    ${register_locator.OK_pop_up}   
    SeleniumLibrary.Wait Until Element Is Not Visible    ${register_locator.OK_pop_up}