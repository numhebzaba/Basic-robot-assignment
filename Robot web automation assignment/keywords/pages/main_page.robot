*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Click user icon 
    SeleniumLibrary.Wait until element is visible    ${main_locator.user_icon}
    SeleniumLibrary.Click element    ${main_locator.user_icon}
In put keyword into search bar
    [Arguments]    ${keyword}
    SeleniumLibrary.Wait until element is visible    ${main_locator.user_icon}
    SeleniumLibrary.Input text    ${main_locator.searchbar}    ${keyword}
Click search icon then page should show search result
    SeleniumLibrary.Wait until element is visible    ${main_locator.search_icon}
    SeleniumLibrary.Click element    ${main_locator.search_icon}
Click phone product then should show product page
    SeleniumLibrary.Wait until element is visible    ${main_locator.phone}
    SeleniumLibrary.Click element    ${main_locator.phone}
