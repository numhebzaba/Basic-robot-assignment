*** Settings ***
Resource    ../import.robot
*** Keywords ***
Log in
    [Arguments]    &{user_info}
    
    login_page.Input username on login page    ${user_info["username"]}
    login_page.Input password on login page    ${user_info["password"]}
    login_page.Click Login button
    login_page.Click OK pop up after login successfully
    


