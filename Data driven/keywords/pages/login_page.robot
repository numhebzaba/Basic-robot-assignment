*** Settings ***
Resource    ../import.robot
*** Keywords ***
Click user icon 
    Wait Until Element Is Visible    ${login_locator.user_icon}
    Click Element    ${login_locator.user_icon}
Input username on login page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${login_locator.username_input}
    Input Text    ${login_locator.username_input}    ${username}
Input password on login page
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${login_locator.password_input} 
    Input Text    ${login_locator.password_input}    ${password}
Click Login button
    Wait Until Element Is Visible    ${login_locator.login_btn}
    Click Element    ${login_locator.login_btn}
Click OK pop up after login successfully
    Wait Until Element Is Visible   ${login_locator.pop_up_btn}
    Click Element    ${login_locator.pop_up_btn}   
    Wait Until Element Is Not Visible    ${login_locator.pop_up_btn}
Verify expected message
    [Arguments]    ${expect_message}
    Wait Until Element Is Visible    ${login_locator.verify_message}
    ${status}    Get Text    ${login_locator.verify_message}
    Log    ${status}    console=True
    Should Be Equal As Strings    ${status}     ${expect_message}