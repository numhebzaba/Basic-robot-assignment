*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click user icon 
    SeleniumLibrary.Wait Until Element Is Visible    ${main_locator.user_icon}
    SeleniumLibrary.Click Element    ${main_locator.user_icon}
In put keyword into search bar
    [Arguments]    ${keyword}
    SeleniumLibrary.Wait Until Element Is Visible    ${main_locator.user_icon}
    SeleniumLibrary.Input Text    ${main_locator.searchbar}    ${keyword}
Click search icon then page should show search result
    SeleniumLibrary.Wait Until Element Is Visible    ${main_locator.search_icon}
    SeleniumLibrary.Click Element    ${main_locator.search_icon}
Click phone product then should show product page
    SeleniumLibrary.Wait Until Element Is Visible    ${main_locator.phone}
    SeleniumLibrary.Click Element    ${main_locator.phone}
