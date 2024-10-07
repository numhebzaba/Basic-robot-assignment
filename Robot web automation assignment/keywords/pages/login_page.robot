*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click sign up button and should show register page
    SeleniumLibrary.Wait until element is visible    ${login_locator.sign_up_btn}
    SeleniumLibrary.Click element    ${login_locator.sign_up_btn}
Input username on login page
    [Arguments]    ${username}
    SeleniumLibrary.Wait until element is visible    ${login_locator.username}
    SeleniumLibrary.Input text    ${login_locator.username}    ${username}
Input password on login page
    [Arguments]    ${password}
    SeleniumLibrary.Wait until element is visible    ${login_locator.password} 
    SeleniumLibrary.Input text    ${login_locator.password}    ${password}
Click login button
    SeleniumLibrary.Wait until element is visible    ${login_locator.login_btn}
    SeleniumLibrary.Click element    ${login_locator.login_btn}
Click ok pop up after login successfully
    SeleniumLibrary.Wait until element is visible    ${login_locator.OK_pop_up}
    SeleniumLibrary.Click element    ${login_locator.OK_pop_up}   
    SeleniumLibrary.Wait until element is not visible    ${login_locator.OK_pop_up}