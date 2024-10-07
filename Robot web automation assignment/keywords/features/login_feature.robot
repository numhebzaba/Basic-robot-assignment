*** Settings ***
Resource    ../import.robot
*** Keywords ***
Log in and icon user should turn into green 
    [Arguments]    &{user_info}
    
    login_page.Input username on login page    ${user_info["username"]}
    login_page.Input password on login page    ${user_info["password"]}
    login_page.Click login button
    login_page.Click ok pop up after login successfully
    


