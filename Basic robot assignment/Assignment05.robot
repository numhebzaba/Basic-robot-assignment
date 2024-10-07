*** Keywords ***
Print All Items
    [Arguments]    @{items}
    FOR    ${item}    IN    @{items}
        Log    ${item}    
    END


*** Test Cases ***
TC-001 Print All Items From Input
    Print All Items    apple    banana    cherry    mango

