*** Settings ***
Variables    variables.yaml
*** Keywords ***
*** Test Cases ***
TC-001 Global Variable and Local Variable
    Log    ${user.name}    console=true
    Log    ${user.age}    console=true
    Log    ${user.city}    console=true
    
