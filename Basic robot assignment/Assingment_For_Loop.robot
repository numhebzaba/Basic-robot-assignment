*** Settings ***

*** Variables ***
@{hero}    ironman    batman    captain    superman    hulk    shazam    thor    flash    blackwidow    wonder woman    hawkeye
*** Test Cases ***
Tc-001 Loop Hero Name
    ${i}    Set Variable    0
    FOR    ${index}    IN    @{hero}
        IF    ${i}%2 == 0
            Log To Console    ${index}
        END
        ${i}    Evaluate    ${i}+1

        Exit For Loop If    "${index}"=="blackwidow"
    END
*** Keywords ***

    
    