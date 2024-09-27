*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Calculate Square
    [Arguments]    ${number}
    ${number}=    Convert To Integer    ${number}
    ${result}   Set Variable    ${${number} * ${number}}
    Return From Keyword    ${result}
*** Test Cases ***
TC-001 Power with 2
    ${square}    Calculate Square    4    
    Should Be Equal As Numbers    ${square}    16 
    

