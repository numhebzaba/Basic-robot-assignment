*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input username on register page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${register_locator.username}
    Input Text    ${register_locator.username}    ${username}
Input password on register page
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${register_locator.password} 
    Input Text    ${register_locator.password}    ${password}
Input confirm password on register page
    [Arguments]    ${confirm_password}
    Wait Until Element Is Visible    ${register_locator.confirm_password}
    Input Text    ${register_locator.confirm_password}    ${confirm_password}
Click sign up button
    Wait Until Element Is Visible    ${register_locator.sign_up_btn}
    Click Element    ${register_locator.sign_up_btn}   
Click OK pop up after register successfully
    Wait Until Element Is Visible    ${register_locator.OK_pop_up}
    Click Element    ${register_locator.OK_pop_up}   
    Wait Until Element Is Not Visible    ${register_locator.OK_pop_up}