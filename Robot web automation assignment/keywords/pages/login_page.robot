*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click sign up button for register
    Wait Until Element Is Visible    ${login_locator.sign_up_btn}
    Click Element    ${login_locator.sign_up_btn}
Input username on login page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${login_locator.username}
    Input Text    ${login_locator.username}    ${username}
Input password on login page
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${login_locator.password} 
    Input Text    ${login_locator.password}    ${password}
Click Login button
    Wait Until Element Is Visible    ${login_locator.login_btn}
    Click Element    ${login_locator.login_btn}
Click OK pop up after login successfully
    Wait Until Element Is Visible    ${login_locator.OK_pop_up}
    Click Element    ${login_locator.OK_pop_up}   
    Wait Until Element Is Not Visible    ${login_locator.OK_pop_up}