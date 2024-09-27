*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Log    Suite Teardown is running    console=True

*** Test Cases ***
TC-001 Test Case With Teardown
    [Teardown]    Log    Test Case Teardown is running    console=True
    Log    Running the test    console=True
    Keyword With Teardown
*** Keywords ***
Keyword With Teardown
    [Teardown]    Log    Keyword Teardown is running    console=True
    Log    Running the keyword    console=True
    

