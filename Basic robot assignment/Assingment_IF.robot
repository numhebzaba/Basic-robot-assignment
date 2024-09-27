*** Settings ***

*** Test Cases ***
Tc-001 Score Is More Than Or Equal 90
    Give Grade    99
Tc-002 Score Is More Than Or Equal 80
    Give Grade    80
Tc-003 Score Is More Than Or Equal 70
    Give Grade    75
Tc-004 Score Is More Than Or Equal 60
    Give Grade    60.5
Tc-005 Score Is Lesser Than 60
    Give Grade    15
*** Keywords ***
Give Grade
    [Arguments]    ${score}
    IF    ${score} >= 90
        Log To Console    A
    ELSE IF    ${score} >= 80
        Log To Console    B
    ELSE IF    ${score} >= 70
        Log To Console    C
    ELSE IF    ${score} >= 60
        Log To Console    D
    ELSE
        Log To Console    F
    END