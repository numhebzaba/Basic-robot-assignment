*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Create Fruit List
    @{fruits}    Create List    apple    banana    cherry
    Return From Keyword    @{fruits}
*** Test Cases ***
TC-001 Get Fruit List and Log Fruit
    @{my_fruits}    Create Fruit List
    Log    ${my_fruits[0]}    console=True
    

