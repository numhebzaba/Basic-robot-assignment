*** Settings ***
Resource    ../import.robot
*** Keywords ***
Input username on login page
    [Arguments]    ${username}
    SeleniumLibrary.Wait until element is visible    ${login_locator.username_input}
    SeleniumLibrary.Input text    ${login_locator.username_input}    ${username}
Input password on login page
    [Arguments]    ${password}
    SeleniumLibrary.Wait until element is visible    ${login_locator.password_input} 
    SeleniumLibrary.Input text    ${login_locator.password_input}    ${password}
Click login button
    SeleniumLibrary.Wait until element is visible    ${login_locator.login_btn}
    SeleniumLibrary.Click element    ${login_locator.login_btn}
Click ok pop up after login successfully
    SeleniumLibrary.Wait until element is visible   ${login_locator.pop_up_btn}
    SeleniumLibrary.Click element    ${login_locator.pop_up_btn}   
    SeleniumLibrary.Wait until element is not visible    ${login_locator.pop_up_btn}
Verify expected message
    [Arguments]    ${expect_message}
    SeleniumLibrary.Wait until element is visible    ${login_locator.verify_message}
    ${status}    Get text    ${login_locator.verify_message}
    BuiltIn.Log    ${status}    console=True
    BuiltIn.Should be equal as strings    ${status}     ${expect_message}
    