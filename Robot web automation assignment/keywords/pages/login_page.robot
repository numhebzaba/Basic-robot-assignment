*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click sign up button and should show register page
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.sign_up_btn}
    SeleniumLibrary.Click Element    ${login_locator.sign_up_btn}
Input username on login page
    [Arguments]    ${username}
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.username}
    SeleniumLibrary.Input Text    ${login_locator.username}    ${username}
Input password on login page
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.password} 
    SeleniumLibrary.Input Text    ${login_locator.password}    ${password}
Click Login button
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.login_btn}
    SeleniumLibrary.Click Element    ${login_locator.login_btn}
Click OK pop up after login successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.OK_pop_up}
    SeleniumLibrary.Click Element    ${login_locator.OK_pop_up}   
    SeleniumLibrary.Wait Until Element Is Not Visible    ${login_locator.OK_pop_up}