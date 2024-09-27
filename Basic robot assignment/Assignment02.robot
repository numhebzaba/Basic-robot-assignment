*** Keywords ***
 Print Fruits
    [Arguments]    @{fruits}
    FOR    ${fruits}    IN    @{fruits}
        Log    ${fruits}
    END

*** Test Cases ***
TC-001 Print Fruits From Input List
    Print Fruits    apple    banana    cherry.
    

