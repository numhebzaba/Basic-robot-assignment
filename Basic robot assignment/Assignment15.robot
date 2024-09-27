*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
*** Test Cases ***
TC-001 Error Handling Example
    ${status}    Run Keyword And Return Status    Click Element    invalid_locator
    Log    Status: ${status}    console=True
    Run Keyword And Ignore Error    Input Text    invalid_locator    value
    Log    Ignored the error and continued    console=True


    

