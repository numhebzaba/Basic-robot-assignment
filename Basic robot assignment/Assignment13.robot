*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
*** Test Cases ***
TC-001 Print Fruit List
    @{fruits}    Create List     apple    banana    cherry
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}    console=True
    END

    

