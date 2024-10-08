*** Settings ***
Resource    ../import.robot
*** Keywords ***
Click user icon 
    SeleniumLibrary.Wait until element is visible    ${main_locator.user_icon}
    SeleniumLibrary.Click element    ${main_locator.user_icon}