*** Keywords ***
 Greet User
    [Arguments]    ${name}=Guest
    Log    "Hello, ${name}"


*** Test Cases ***
TC-001 Greet User by Default
    Greet User
TC-002 Greet User by Input
    Greet User    John
    
    

