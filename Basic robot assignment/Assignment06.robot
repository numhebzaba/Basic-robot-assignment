*** Keywords ***
Log Local
    Set Local Variable    ${LOCAL_VAR}    "Local Value"
    Log    ${LOCAL_VAR}    console=${True}
*** Test Cases ***
TC-001 Global Variable and Local Variable
    Set Global Variable    ${GLOBAL_VAR}    "Global Value"
    Log    ${GLOBAL_VAR}    
    Log Local
