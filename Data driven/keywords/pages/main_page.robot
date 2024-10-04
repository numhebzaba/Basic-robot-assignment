*** Settings ***
Resource    ../import.robot
*** Keywords ***
Click user icon 
    Wait Until Element Is Visible    ${main_locator.user_icon}
    Click Element    ${main_locator.user_icon}