*** Settings ***
Library    SeleniumLibrary
Variables    config.yaml
*** Keywords ***
*** Test Cases ***
TC-001 Preload Variables From YAML File
    Open Browser    url=${app_url}    browser=gc        
    Input Text    id=user-name    ${credentials.username}
    Input Password    id=password    ${credentials.password}
    Click Button    id=login-button
    Close Browser
    
