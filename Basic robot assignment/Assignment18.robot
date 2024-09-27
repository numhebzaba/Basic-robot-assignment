*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log    Suite is starting    console=True
Suite Teardown    Log    Suite is ending    console=True
*** Test Cases ***
TC-001 
    Log    Running Test 1    console=True
TC-002 
    Log    Running Test 2    console=True

    

