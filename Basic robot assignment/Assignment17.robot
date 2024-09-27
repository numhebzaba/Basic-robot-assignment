*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
*** Test Cases ***
TC-001 Example Test With Setup And Teardown
    [Setup]    Open Browser    url=http://example.com   browser=gc
    [Teardown]    Close Browser
    Log    Test is running    console=True

    

