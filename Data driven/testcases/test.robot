*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
Test Template    Test Login with data driven
*** Test Cases ***
Test Data Driver
*** Keywords ***
Test Login with data driven
    [Arguments]    ${username}    ${password}    ${expect_message}
    common.Open training platform doppio website
    main_page.Click user icon
    login_page.Input username on login page    ${username}
    login_page.Input password on login page    ${password}
    login_page.Click Login button
    login_page.Verify expected message    ${expect_message}
    login_page.Click OK pop up after login successfully
    Close Browser
    


