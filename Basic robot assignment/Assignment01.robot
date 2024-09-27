*** Keywords ***
Validate Age
    [Arguments]    ${age}
    Run Keyword If  
    ...    ${age}>18  Log To Console    "Eligible for voting"
    ...    ELSE    Log To Console    "Not eligible for voting"

*** Test Cases ***
TC-001 Age is 16
    Validate Age    16
TC-002 Age is 20
    Validate Age    20
