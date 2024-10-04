*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Click user icon 
    Wait Until Element Is Visible    ${main_locator.user_icon}
    Click Element    ${main_locator.user_icon}
In put keyword into search bar
    [Arguments]    ${keyword}
    Wait Until Element Is Visible    ${main_locator.user_icon}
    Input Text    ${main_locator.searchbar}    ${keyword}
Click search icon then page should show search result
    Wait Until Element Is Visible    ${main_locator.search_icon}
    Click Element    ${main_locator.search_icon}
Click phone product then should show product page
    Wait Until Element Is Visible    ${main_locator.phone}
    Click Element    ${main_locator.phone}
